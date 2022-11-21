#run {
    set_build_options_dc(.{do_output=false});
    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
    }
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

#import "Basic";
#import "Compiler";
#import "Bindings_Generator";
#import "File";

WINDOWS_HEADER :: #string END
size_t  :: u64;
wchar_t :: u16;
END
