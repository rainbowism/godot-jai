Variant :: struct {
    opaque: [24] u8;
}

make_variant_nil :: () -> Variant {
    variant: Variant;
    gdn_interface.variant_new_nil(xx *variant);
    return variant;
}

destroy :: (variant: Variant) {
    gdn_interface.variant_destroy(xx *variant);
}

String :: struct {
    opaque: [8] u8;
}

StringName :: struct {
    opaque: [8] u8;
}
