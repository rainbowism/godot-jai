// Bindings for Godot 4.

// @@ Module options:

#if OS == .WINDOWS {
    #load "gdnative/windows.jai";
} else {
    #load "gdnative/unix.jai";
}

#load "godot.jai";
#load "classdb.jai";
#load "variant.jai";
#load "wrapped.jai";
#load "test.jai";
