MAIN_SRC :: "src/main.jai";
MODULE_PATHS :: string.["../.."];

#run build();  // At compile-time, run the following procedure:

build :: () {
    ws := compiler_create_workspace();

    options := get_build_options();
    options.output_executable_name = "libgdexample";
    options.output_type            = .DYNAMIC_LIBRARY;
    // options.optimization_level     = .RELEASE;
    modules_path: [..] string;
    for options.import_path  array_add(*modules_path, it);
    for MODULE_PATHS         array_add(*modules_path, it);
    options.import_path = modules_path;

    set_build_options(options, ws);

    add_build_file(MAIN_SRC, ws);

    set_build_options_dc(.{do_output=false});  // No executable for this workspace.
}

#import "Basic";
#import "Compiler";
