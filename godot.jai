gdn_register_extension :: (p_interface: *GDNativeInterface, p_library: GDNativeExtensionClassLibraryPtr) {
    gdn_interface = p_interface;
    gdn_library   = p_library;
}

make_string_name :: (text: string) -> StringName {
    gd_string: String;
    gd_string_name: StringName;
    constuctor_2 := cast(#type (*StringName, *[1] *String) #c_call) gdn_interface.variant_get_ptr_constructor(.STRING_NAME, 2);
    gdn_interface.string_new_with_latin1_chars_and_len(xx *gd_string, text.data, text.count);
    args: [1] *String;
    args[0] = *gd_string;
    constuctor_2(*gd_string_name, *args);
    return gd_string_name;
}

// #scope_module

GD :: struct #type_info_none {
    // print :: (arg1: Variant) {
	//     fn := gdn_interface.variant_get_ptr_utility_function("print", 2648703342);
    // }
}

gdn_interface: *GDNativeInterface;
gdn_library:    GDNativeExtensionClassLibraryPtr;
