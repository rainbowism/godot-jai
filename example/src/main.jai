#program_export
init_plugin :: (p_interface: *GDNativeInterface, p_library: GDNativeExtensionClassLibraryPtr, p_initialization: *GDNativeInitialization) -> GDNativeBool #c_call {
    ctx: Context;
    push_context ctx {
        gdn_register_extension(p_interface, p_library);
    }
    p_initialization.initialize   = init_module;
    p_initialization.deinitialize = deinit_module;
    return 1;
}

init_module :: (userdata: *void, level: GDNativeInitializationLevel) #c_call {
	if level != .INITIALIZATION_SCENE  return;
    ctx: Context;
    push_context ctx {
        // print("Printing from Jai in `init_module` at level %.\n", level);
        classdb_register_class(Example, "Control");
        classdb_register_method_static(Example, static_test, "static_test");
    }
}

deinit_module :: (userdata: *void, level: GDNativeInitializationLevel) #c_call {
	if level != .INITIALIZATION_SCENE  return;
    // ctx: Context;
    // push_context ctx {
    //     print("Printing from Jai in `deinit_module` at level %.\n", level);
    // }
}

static_test :: () #c_call {
    ctx: Context;
    push_context ctx {
        print("Hello from Jai!\n");
    }
}

Example :: struct {

}

#import "Basic";
#import "Godot";
