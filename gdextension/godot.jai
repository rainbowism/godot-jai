gdn_register_extension :: (p_interface: *GDNativeInterface, p_library: GDNativeExtensionClassLibraryPtr) {
    gdn_interface = p_interface;
    gdn_library   = p_library;

    gdn_init_bindings();
}

make_string_name :: (text: string) -> GD_StringName {
    gd_string: GD_String;
    gd_string_name: GD_StringName;
    gdn_interface.string_new_with_latin1_chars_and_len(xx *gd_string, text.data, text.count);
    args: [1] *GD_String;
    args[0] = *gd_string;
    string_name_bindings.constructor_2(*gd_string_name, *args);
    return gd_string_name;
}

#scope_module

gdn_interface: *GDNativeInterface;
gdn_library:    GDNativeExtensionClassLibraryPtr;
