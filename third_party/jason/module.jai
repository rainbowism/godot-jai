// This file contains just the JSON serialization functions. See generic.jai and typed.jai for parse fuctions.

// Generates a JSON string from either a JSON_Value or any custom type.
// "indent_char" does what it says on the tin.
// "ignore" is only used for custom types to determine which properties of your custom type should be serialized.
//		The default ignore function ignores all struct members that have the note @JsonIgnore.
json_write_string :: (value: $T, indent_char := "\t", ignore := ignore_by_note) -> string {
	builder: String_Builder;
	defer free_buffers(*builder);
	json_append_value(*builder, value, indent_char, ignore);
	return builder_to_string(*builder);
}

json_write_file :: (filename: string, value: $T, indent_char := "\t", ignore := ignore_by_note) -> bool {
	builder: String_Builder;
	defer free_buffers(*builder);
	json_append_value(*builder, value, indent_char, ignore);
	return write_entire_file(filename, builder);
}

json_append_value :: (builder: *String_Builder, val: $T, indent_char := "\t", ignore := ignore_by_note) {
	#if T == JSON_Value {
		json_write_json_value(builder, val, indent_char);
	} else {
		info := type_info(T);
		json_write_native(builder, *val, info, indent_char, ignore);
	}
}

// This function is useful if you have a JSON template string and just want to
// safely insert a value without having to replicate the full json structure in Jai.
// The return value does NOT include quotes around the string.
//
// Example:
// JSON_TEMPLATE :: #string END
// {
// 	"complicated": {
// 		"json": {
// 			"structure": {
// 				"for_a_stupid_api": {
// 					"that_needs": [
// 						{"a_deeply_nested_value": "%1"}
// 					]
// 				}
// 			}
// 		}
// 	}
// }
// END
// escaped_value := json_escape_string(my_unsafe_value);
// defer free(escaped_value);
// json_str := print(JSON_TEMPLATE, escaped_value);
json_escape_string :: (str: string) -> string {
	builder: String_Builder;
	defer	free_buffers(*builder);
	json_append_escaped(*builder, str);
	escaped := builder_to_string(*builder);
	return escaped;
}

ignore_by_note :: (member: *Type_Info_Struct_Member) -> bool {
	for note: member.notes {
		if note == "JsonIgnore"	return true;
	}
	return false;
}

#scope_module

WHITESPACE_CHARS :: " \t\n\r";

#load "generic.jai";
#load "typed.jai";

json_append_escaped :: (builder: *String_Builder, str: string) {
	remaining := str;
	next_pos := index_of_illegal_string_char(remaining);
	append(builder, "\"");
	while (next_pos >= 0) {
		append(builder, slice(remaining, 0, next_pos));
		if remaining[next_pos] == {
			case #char "\\";
				append(builder,  "\\\\");
			case #char "\"";
				append(builder,  "\\\"");
			case #char "\n";
				append(builder, "\\n");
			case #char "\r";
				append(builder, "\\r");
			case #char "\t";
				append(builder, "\\t");
			case;
				// ToDo: handle illegal multi-byte characters
				// print("Escaping: %\n\n", slice(remaining, next_pos, remaining.count - next_pos));
				print_to_builder(builder, "\\u%", formatInt(remaining[next_pos], base=16, minimum_digits=4));
		}
		remaining = advance(remaining, next_pos + 1);
		next_pos = index_of_illegal_string_char(remaining);
	}
	append(builder, remaining);
	append(builder, "\"");
}

index_of_illegal_string_char :: (str: string) -> s64 {
	for 0..str.count - 1 {
		if str[it] == #char "\\" || str[it] == #char "\"" || str[it] <= 0x1F {
			return it;
		}
	}
	return -1;
}

expect_and_slice :: (str: string, expected: string) -> remainder: string, success: bool {
	if str.count < expected.count || !equal(slice(str, 0, expected.count), expected) {
		log_error("Unexpected token. Expected \"%\" but got: %", expected, str);
		return str, false;
	}
	remainder := advance(str, expected.count);
	return remainder, true;
}

parse_string :: (str: string) -> result: string, remainder: string, success: bool {
	assert(str[0] == #char "\"", "Invalid string start %", str);
	inside := advance(str);
	needsUnescape := false;
	while inside[0] != #char "\"" {
		if inside.count < 2 	return "", str, false;
		if inside[0] == #char "\\" {
			needsUnescape = true;
			if inside.count < 2	return "", str, false;
			advance(*inside);
		}
		advance(*inside);
	}

	length := inside.data - str.data - 1;
	result := slice(str, 1, length);
	if needsUnescape {
		success: bool;
		result, success = unescape(result);
		if !success		return "", str, false;
	} else {
		result = copy_string(result);
	}

	remainder := slice(str, length + 2, str.count - length - 2);
	return result, remainder, true;
}

unescape :: (str: string) -> result: string, success: bool {
	result := alloc_string(str.count);
	rc := 0;
	for i: 0..str.count-1 {
		if str[i] != #char "\\" {
			// Check for invalid characters for JSON
			if str[i] < 0x20	return "", false;

			result[rc] = str[i];
			rc += 1;
		} else {
			if i == str.count - 1	return "", false;
			i += 1;
			if str[i] == {
				case #char "\""; #through;
				case #char "/"; #through;
				case #char "\\";
					result[rc] = str[i];
					rc += 1;
				case #char "b";
					result[rc] = 0x08;
					rc += 1;
				case #char "f";
					result[rc] = 0x0c;
					rc += 1;
				case #char "n";
					result[rc] = #char "\n";
					rc += 1;
				case #char "r";
					result[rc] = #char "\r";
					rc += 1;
				case #char "t";
					result[rc] = #char "\t";
					rc += 1;
				case #char "u";
					if i + 4 >= str.count	return "", false;
					unicode_char, success := parse_unicode(slice(str, i + 1, 4));
					if !success		return "", false;
					utf8_len := encode_utf8(unicode_char, *(result.data[rc]));
					rc += utf8_len;
					i += 4;
				case;
					return "", false;
			}
		}
	}
	result.count = rc;
	return result, true;
}


is_utf_cont :: inline (b: u8) -> bool {
	return (b & 0xc0) == 0x80;
}

parse_unicode :: (str: string) -> result: u16, success: bool {
	val, success, remainder := string_to_int(str, base = 16);
	if !success || val > 0xFFFF || remainder.count		return 0, false;
	return xx val, true;
}

encode_utf8 :: (val: u16, result: *u8) -> len: u8 {
	if val & 0xF800 {
		result[0] = xx (0xE0 | ((val & 0xF000) >> 12));
		result[1] = xx (0x80 | ((val & 0x0FC0) >> 6));
		result[2] = xx (0x80 | (val & 0x003F));
		return 3;
	} else if val & 0x0F80 {
		result[0] = xx (0xC0 | ((val & 0x0FC0) >> 6));
		result[1] = xx (0x80 | (val & 0x003F));
		return 2;
	} else {
		result[0] = xx (val & 0x7F);
		return 1;
	}
}

is_valid_utf8 :: (str: string) -> valid:bool {
	for i: 0..str.count-1 {
		cur := str[i];
		if cur >= 0x80 {
			// Must be between 0xc2 and 0xf4 inclusive to be valid
			if (cur - 0xc2) > (0xf4 - 0xc2) return false;

			if cur < 0xe0 {     // 2-byte sequence
				if i + 1 >= str.count || !is_utf_cont(str[i+1]) return false;
				i += 1;
			} else if cur < 0xf0 { // 3-byte sequence
				if i + 2 >= str.count || !is_utf_cont(str[i+1]) || !is_utf_cont(str[i+2]) return false;

				// Check for surrogate chars
				if cur == 0xed && str[i+1] > 0x9f return false;
				// ToDo: Check if total >= 0x800
				// uc = ((uc & 0xf)<<12) | ((*str & 0x3f)<<6) | (str[1] & 0x3f);
				i += 2;
			} else {	// 4-byte sequence
				if i + 3 >= str.count || !is_utf_cont(str[i+1]) || !is_utf_cont(str[i+2]) || !is_utf_cont(str[i+3]) return false;
				// Make sure its in valid range (0x10000 - 0x10ffff)
				if cur == 0xf0 && str[i + 1] < 0x90 return false;
				if cur == 0xf4 && str[i + 1] > 0x8f return false;
				i += 3;
			}
		}
	}
	return true;
}


#import "Basic";
#import "File";
#import "String";

#import "Hash_Table";
#import "IntroSort";

