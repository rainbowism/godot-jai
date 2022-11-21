BUILD_CONFIGURATION :: "float_64";

#run {
    set_build_options_dc(.{do_output=false});

    parse_extension_api();

    // if !generate_bindings() {
    //     compiler_set_workspace_status(.FAILED);
    // }
}

generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            array_add(*libpaths, "win");
            output_filename                       = "gdnative/windows.jai";
            // generate_foreign_library_declarations = false;
            header                                = WINDOWS_HEADER;
        } else #if OS == .LINUX {
            #assert false;
            // @Todo(sushi): set up builds for linux and macos
            // array_add(*libpaths, "linux");
            // output_name                           = "gdnative/unix.jai";
            // generate_foreign_library_declarations = false;
        } else #if OS == .MACOS {
            #assert false;
            // array_add(*system_include_paths, "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include");
            // array_add(*libpaths, "mac");
            // output_name                           = "gdnative/unix.jai";
            // generate_foreign_library_declarations = false;
        } else {
            #assert false;
        }

        array_add(*system_include_paths,    GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);
        array_add(*source_files,            "godot_headers/godot/gdnative_interface.h");
        auto_detect_enum_prefixes           = true;
        generate_compile_time_struct_checks = false;
    }

    return generate_bindings(opts, output_filename);
}

parse_extension_api :: () {
    success, result := json_parse_file("godot_headers/extension_api.json", GD_Extension_API);
    assert(success, "Failed to parse `extension_api.json`.");

    class_sizes: *GD_Builtin_Class_Size;

    for *result.builtin_class_sizes {
        if it.build_configuration == BUILD_CONFIGURATION {
            class_sizes = it;
            break;
        }
    }
    if class_sizes == null {
        assert(false, "Failed to find matching `builtin_class_sizes`.");
    }

    generate_builtin_classes(class_sizes, result.builtin_classes);
}

find_class_size :: (name: string, class_sizes: *GD_Builtin_Class_Size) -> int {
    for class_sizes.sizes {
        if it.name == name {
            return it.size;
        }
    }

    assert(false, "Failed to find matching size in `builtin_class_size`.");
    return 0;
}

generate_builtin_classes :: (class_sizes: *GD_Builtin_Class_Size, classes: [] GD_Builtin_Class) {
    builder: String_Builder;
    init_builder: String_Builder;

    // print_to_builder(*builder, "GD :: struct #type_info_none {\n");
    print_to_builder(*builder, #string JAI
GD_void   :: void;
GD_int    :: int;
GD_float  :: float;
GD_bool   :: bool;
GD_double :: float64;
    JAI);
    print_to_builder(*init_builder, "\ninit_bindings :: () {\n");
    for *class: classes {
        if class.name == {
            case "Nil"; continue;
            case "void"; continue;
            case "int"; continue;
            case "float"; continue;
            case "bool"; continue;
            case "double"; continue;
        }

        print_to_builder(*builder, #string JAI

    GD_% :: struct {
        opaque: [%] u8;
    }

        JAI, class.name, find_class_size(class.name, class_sizes));

        lower_variant_type := generate_builtin_class_bindings(*builder, class);
        print_to_builder(*init_builder, "    init_bindings_%();\n", lower_variant_type);
        reset_temporary_storage();
    }
    print_to_builder(*init_builder, "}\n");
    print_to_builder(*builder, builder_to_string(*init_builder, temp));
    // print_to_builder(*builder, "}\n");

    reset_temporary_storage();
    write_entire_file("gdextension/builtin_classes.gen.jai", *builder);
}

generate_builtin_class_bindings :: (builder: *String_Builder, class: *GD_Builtin_Class) -> string {
    temp_builder: String_Builder;
    variant_type: string;
    lower_variant_type: string;
    if starts_with(class.name, "Packed") {
        append(*temp_builder, "PACKED_");
        variant_type.data  = class.name.data + 6;
        variant_type.count = class.name.count - 11;
        append(*temp_builder, to_upper_copy(variant_type));
        append(*temp_builder, "_ARRAY");
        variant_type = builder_to_string(*temp_builder, temp);
        reset(*temp_builder);
    } else if class.name == "StringName" {
        variant_type = "STRING_NAME";
    } else if class.name == "NodePath" {
        variant_type = "NODE_PATH";
    } else {
        variant_type = to_upper_copy(class.name);
    }
    lower_variant_type = to_lower_copy(variant_type);

    print_to_builder(builder, "GD_%_Method_Bindings :: struct {\n", class.name);
    print_to_builder(*temp_builder, "\ninit_bindings_% :: () {\n", lower_variant_type);

    for constructor: class.constructors {
        if constructor.arguments.count > 1 {
            all_arguments_match: bool = true;
            for 0..constructor.arguments.count-2 {
                if constructor.arguments[it].type == constructor.arguments[it+1].type  continue;
                all_arguments_match = false;
                break;
            }

            if all_arguments_match {
                print_to_builder(builder, "    constructor_%: #type (dest: *GD_%, *[%] *GD_%) #c_call;\n", constructor.index, class.name, constructor.arguments.count, constructor.arguments[0].type);
            } else {
                print_to_builder(builder, "    constructor_%: #type (dest: *GD_%, *[%] *GDNativeVariantPtr) #c_call;\n", constructor.index, class.name, constructor.arguments.count);
            }
        } else if constructor.arguments.count == 1 {
            print_to_builder(builder, "    constructor_%: #type (dest: *GD_%, *[1] *GD_%) #c_call;\n", constructor.index, class.name, constructor.arguments[0].type);
        } else {
            print_to_builder(builder, "    constructor_%: #type (dest: *GD_%, *void) #c_call;\n", constructor.index, class.name);
        }
        print_to_builder(*temp_builder, "    %_bindings.constructor_% = xx gdn_interface.variant_get_ptr_constructor(.%, %);\n", lower_variant_type, constructor.index, variant_type, constructor.index);
    }

    if class.has_destructor {
        print_to_builder(builder, "    destructor: #type (self: *GD_%) #c_call;\n", class.name);
        print_to_builder(*temp_builder, "    %_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.%);\n", lower_variant_type, variant_type);
    }

    for method: class.methods {
        print_to_builder(builder, "    %: #type (self: *GD_%) #c_call;\n", method.name, class.name);
    }

    print_to_builder(builder, "}\n");
    print_to_builder(builder, "%_bindings: GD_%_Method_Bindings;\n", lower_variant_type, class.name);
    print_to_builder(*temp_builder, "}\n");
    print_to_builder(builder, builder_to_string(*temp_builder, temp));

    return lower_variant_type;
}

#import "Basic";
#import "String";
#import "Compiler";
#import "Bindings_Generator";
#import "File";
#import,dir "third_party/jason";

#load "gd_extension_api.jai";

WINDOWS_HEADER :: #string END
size_t  :: u64;
wchar_t :: u16;
END
