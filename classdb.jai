classdb_register_class :: ($type: Type, $parent: Type) {
    classdb_register_class(type, type_info(parent).name);
}

classdb_register_class :: ($type: Type, parent: string) {
    // classdb_register_extension_class: (
    //     p_library: GDNativeExtensionClassLibraryPtr,
    //     p_class_name: GDNativeStringNamePtr,
    //     p_parent_class_name: GDNativeStringNamePtr,
    //     p_extension_funcs: *GDNativeExtensionClassCreationInfo
    // ) -> void #c_call;
    ti := type_info(type);
    class_gdsn := make_string_name(ti.name);
    parent_gdsn := make_string_name(parent);

    creation_info := New(GDNativeExtensionClassCreationInfo);
    creation_info.is_abstract = 1;

    gdn_interface.classdb_register_extension_class(
        gdn_library,
        xx *class_gdsn,
        xx *parent_gdsn,
        creation_info
    );
}

classdb_register_method_static :: ($type: Type, method: $T, method_name: string) {
    classdb_register_method_static(type, method, method_name, null, null);
}

classdb_register_method_static :: ($type: Type, method: $T, method_name: string, arg_names: *[..] string, default_values: *[..] Variant) {
    ti := type_info(type);
    class_gdsn := make_string_name(ti.name);
    method_gdsn := make_string_name(method_name);

    method_info := New(GDNativeExtensionClassMethodInfo);
    method_info.name = xx *method_gdsn;
    method_info.method_userdata = xx method;

    call_func :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) #c_call {
        ctx: Context;
        push_context ctx {
            print("call_func %\n", method_userdata);

            ret := make_variant_nil();
            defer destroy(ret);

            (cast(T) method_userdata)();
            gdn_interface.variant_new_copy(r_return, xx *ret);
        }
    }

    ptrcall_func :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeTypePtr, r_ret: GDNativeTypePtr) #c_call {
        ctx: Context;
        push_context ctx {
            print("ptrcall_func %\n", method_userdata);
        }
    }

    method_info.call_func = call_func;
    method_info.ptrcall_func = ptrcall_func;
    method_info.method_flags = cast(u32) GDNativeExtensionClassMethodFlags.NORMAL | .STATIC;
    method_info.has_return_value = 0;

    gdn_interface.classdb_register_extension_class_method(
        gdn_library,
        xx *class_gdsn,
        method_info
    );

    free(method_info);
    reset_temporary_storage();
}

call_test :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeVariantPtr, p_argument_count: GDNativeInt, r_return: GDNativeVariantPtr, r_error: *GDNativeCallError) #c_call {
    ctx: Context;
    push_context ctx {
        print("call_test %\n", method_userdata);

        method := cast(#type ()) method_userdata;
        method();
    }
}

ptr_call_test :: (method_userdata: *void, p_instance: GDExtensionClassInstancePtr, p_args: *GDNativeTypePtr, r_ret: GDNativeTypePtr) #c_call {
    ctx: Context;
    push_context ctx {
        print("call_test %\n", method_userdata);

        // method := cast(#type ()) method_userdata;
        // method();
    }
}
