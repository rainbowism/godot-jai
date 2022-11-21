GodotObject :: *void;

Wrapped :: struct {
    owner: GodotObject;
}

get_godot_object_owner :: (wrapped: *Wrapped) -> GodotObject {
	return wrapped.owner;
}

set_godot_object_owner :: (wrapped: *Wrapped, owner: GodotObject) {
	wrapped.owner = owner;
}

// cast_to :: (wrapped: *Wrapped, className: TypeName) -> Wrapped {
// 	owner := wrapped.owner

// 	tag := classdb_get_class_tag(
// 		internal.gdn_interface,
// 		string(className),
// 	)

// 	if tag == null {
// 		// log.Panic("classTag unexpectedly came back nil", zap.String("type", string(className)))
// 	}

// 	casted := object_cast_to(cast(GDNativeObjectPtr) owner,
// 		tag,
// 	)

// 	if casted == null {
// 		return null
// 	}

// 	cbs, ok := gdExtensionBindingGDNativeInstanceBindingCallbacks.Get(className)

// 	if !ok {
// 		log.Warn("unable to find callbacks for Object")
// 		return nil
// 	}

// 	ret := GDNativeInterface_object_get_instance_binding(
// 		internal.gdnInterface,
// 		casted,
// 		internal.token,
// 		&cbs)

// 	return *(*Wrapped)(ret)
// }
