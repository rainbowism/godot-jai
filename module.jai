// Bindings for Godot 4.

// @@ Module options:

#if OS == .WINDOWS {
    #load "gdnative/windows.jai";
} else {
    #load "gdnative/unix.jai";
}

#load "gdextension/godot.jai";
#load "gdextension/classdb.jai";
#load "gdextension/variant.jai";
#load "gdextension/builtin_classes.gen.jai";
#load "gdextension/wrapped.jai";
#load "gdextension/test.jai";

#import "Basic";
