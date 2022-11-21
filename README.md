# godot-jai: Go bindings for Godot 4

Jai bindings for [Godot Engine](https://github.com/godotengine/godot).

The project is currently experimental.


# Getting Started

### Using godot-jai

Make sure the proper headers are generated using the following:
```
Godot --dump-extension-api godot_headers/extension_api.json
cp ${GODOT_SRC}/core/extension/gdnative_interface.h godot_headers/godot/
jai generate.jai
```

See the `example` directory for usage.
