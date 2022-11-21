GD_void   :: void;
GD_int    :: int;
GD_float  :: float;
GD_bool   :: bool;
GD_double :: float64;

GD_String :: struct {
    opaque: [8] u8;
}

GD_String_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_String, *void) #c_call;
    constructor_1: #type (dest: *GD_String, *[1] *GD_String) #c_call;
    constructor_2: #type (dest: *GD_String, *[1] *GD_StringName) #c_call;
    constructor_3: #type (dest: *GD_String, *[1] *GD_NodePath) #c_call;
    destructor: #type (self: *GD_String) #c_call;
    casecmp_to: #type (self: *GD_String) #c_call;
    nocasecmp_to: #type (self: *GD_String) #c_call;
    naturalnocasecmp_to: #type (self: *GD_String) #c_call;
    length: #type (self: *GD_String) #c_call;
    substr: #type (self: *GD_String) #c_call;
    get_slice: #type (self: *GD_String) #c_call;
    get_slicec: #type (self: *GD_String) #c_call;
    get_slice_count: #type (self: *GD_String) #c_call;
    find: #type (self: *GD_String) #c_call;
    count: #type (self: *GD_String) #c_call;
    countn: #type (self: *GD_String) #c_call;
    findn: #type (self: *GD_String) #c_call;
    rfind: #type (self: *GD_String) #c_call;
    rfindn: #type (self: *GD_String) #c_call;
    match: #type (self: *GD_String) #c_call;
    matchn: #type (self: *GD_String) #c_call;
    begins_with: #type (self: *GD_String) #c_call;
    ends_with: #type (self: *GD_String) #c_call;
    is_subsequence_of: #type (self: *GD_String) #c_call;
    is_subsequence_ofn: #type (self: *GD_String) #c_call;
    bigrams: #type (self: *GD_String) #c_call;
    similarity: #type (self: *GD_String) #c_call;
    format: #type (self: *GD_String) #c_call;
    replace: #type (self: *GD_String) #c_call;
    replacen: #type (self: *GD_String) #c_call;
    repeat: #type (self: *GD_String) #c_call;
    insert: #type (self: *GD_String) #c_call;
    capitalize: #type (self: *GD_String) #c_call;
    to_camel_case: #type (self: *GD_String) #c_call;
    to_pascal_case: #type (self: *GD_String) #c_call;
    to_snake_case: #type (self: *GD_String) #c_call;
    split: #type (self: *GD_String) #c_call;
    rsplit: #type (self: *GD_String) #c_call;
    split_floats: #type (self: *GD_String) #c_call;
    join: #type (self: *GD_String) #c_call;
    to_upper: #type (self: *GD_String) #c_call;
    to_lower: #type (self: *GD_String) #c_call;
    left: #type (self: *GD_String) #c_call;
    right: #type (self: *GD_String) #c_call;
    strip_edges: #type (self: *GD_String) #c_call;
    strip_escapes: #type (self: *GD_String) #c_call;
    lstrip: #type (self: *GD_String) #c_call;
    rstrip: #type (self: *GD_String) #c_call;
    get_extension: #type (self: *GD_String) #c_call;
    get_basename: #type (self: *GD_String) #c_call;
    path_join: #type (self: *GD_String) #c_call;
    unicode_at: #type (self: *GD_String) #c_call;
    indent: #type (self: *GD_String) #c_call;
    dedent: #type (self: *GD_String) #c_call;
    hash: #type (self: *GD_String) #c_call;
    md5_text: #type (self: *GD_String) #c_call;
    sha1_text: #type (self: *GD_String) #c_call;
    sha256_text: #type (self: *GD_String) #c_call;
    md5_buffer: #type (self: *GD_String) #c_call;
    sha1_buffer: #type (self: *GD_String) #c_call;
    sha256_buffer: #type (self: *GD_String) #c_call;
    is_empty: #type (self: *GD_String) #c_call;
    contains: #type (self: *GD_String) #c_call;
    is_absolute_path: #type (self: *GD_String) #c_call;
    is_relative_path: #type (self: *GD_String) #c_call;
    simplify_path: #type (self: *GD_String) #c_call;
    get_base_dir: #type (self: *GD_String) #c_call;
    get_file: #type (self: *GD_String) #c_call;
    xml_escape: #type (self: *GD_String) #c_call;
    xml_unescape: #type (self: *GD_String) #c_call;
    uri_encode: #type (self: *GD_String) #c_call;
    uri_decode: #type (self: *GD_String) #c_call;
    c_escape: #type (self: *GD_String) #c_call;
    c_unescape: #type (self: *GD_String) #c_call;
    json_escape: #type (self: *GD_String) #c_call;
    validate_node_name: #type (self: *GD_String) #c_call;
    is_valid_identifier: #type (self: *GD_String) #c_call;
    is_valid_int: #type (self: *GD_String) #c_call;
    is_valid_float: #type (self: *GD_String) #c_call;
    is_valid_hex_number: #type (self: *GD_String) #c_call;
    is_valid_html_color: #type (self: *GD_String) #c_call;
    is_valid_ip_address: #type (self: *GD_String) #c_call;
    is_valid_filename: #type (self: *GD_String) #c_call;
    to_int: #type (self: *GD_String) #c_call;
    to_float: #type (self: *GD_String) #c_call;
    hex_to_int: #type (self: *GD_String) #c_call;
    bin_to_int: #type (self: *GD_String) #c_call;
    lpad: #type (self: *GD_String) #c_call;
    rpad: #type (self: *GD_String) #c_call;
    pad_decimals: #type (self: *GD_String) #c_call;
    pad_zeros: #type (self: *GD_String) #c_call;
    trim_prefix: #type (self: *GD_String) #c_call;
    trim_suffix: #type (self: *GD_String) #c_call;
    to_ascii_buffer: #type (self: *GD_String) #c_call;
    to_utf8_buffer: #type (self: *GD_String) #c_call;
    to_utf16_buffer: #type (self: *GD_String) #c_call;
    to_utf32_buffer: #type (self: *GD_String) #c_call;
    num_scientific: #type (self: *GD_String) #c_call;
    num: #type (self: *GD_String) #c_call;
    num_int64: #type (self: *GD_String) #c_call;
    num_uint64: #type (self: *GD_String) #c_call;
    chr: #type (self: *GD_String) #c_call;
    humanize_size: #type (self: *GD_String) #c_call;
}
string_bindings: GD_String_Method_Bindings;

init_bindings_string :: () {
    string_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.STRING, 0);
    string_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.STRING, 1);
    string_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.STRING, 2);
    string_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.STRING, 3);
    string_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.STRING);
}

GD_Vector2 :: struct {
    opaque: [8] u8;
}

GD_Vector2_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector2, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector2, *[1] *GD_Vector2) #c_call;
    constructor_2: #type (dest: *GD_Vector2, *[1] *GD_Vector2i) #c_call;
    constructor_3: #type (dest: *GD_Vector2, *[2] *GD_float) #c_call;
    angle: #type (self: *GD_Vector2) #c_call;
    angle_to: #type (self: *GD_Vector2) #c_call;
    angle_to_point: #type (self: *GD_Vector2) #c_call;
    direction_to: #type (self: *GD_Vector2) #c_call;
    distance_to: #type (self: *GD_Vector2) #c_call;
    distance_squared_to: #type (self: *GD_Vector2) #c_call;
    length: #type (self: *GD_Vector2) #c_call;
    length_squared: #type (self: *GD_Vector2) #c_call;
    limit_length: #type (self: *GD_Vector2) #c_call;
    normalized: #type (self: *GD_Vector2) #c_call;
    is_normalized: #type (self: *GD_Vector2) #c_call;
    is_equal_approx: #type (self: *GD_Vector2) #c_call;
    is_zero_approx: #type (self: *GD_Vector2) #c_call;
    is_finite: #type (self: *GD_Vector2) #c_call;
    posmod: #type (self: *GD_Vector2) #c_call;
    posmodv: #type (self: *GD_Vector2) #c_call;
    project: #type (self: *GD_Vector2) #c_call;
    lerp: #type (self: *GD_Vector2) #c_call;
    slerp: #type (self: *GD_Vector2) #c_call;
    cubic_interpolate: #type (self: *GD_Vector2) #c_call;
    cubic_interpolate_in_time: #type (self: *GD_Vector2) #c_call;
    bezier_interpolate: #type (self: *GD_Vector2) #c_call;
    max_axis_index: #type (self: *GD_Vector2) #c_call;
    min_axis_index: #type (self: *GD_Vector2) #c_call;
    move_toward: #type (self: *GD_Vector2) #c_call;
    rotated: #type (self: *GD_Vector2) #c_call;
    orthogonal: #type (self: *GD_Vector2) #c_call;
    floor: #type (self: *GD_Vector2) #c_call;
    ceil: #type (self: *GD_Vector2) #c_call;
    round: #type (self: *GD_Vector2) #c_call;
    aspect: #type (self: *GD_Vector2) #c_call;
    dot: #type (self: *GD_Vector2) #c_call;
    slide: #type (self: *GD_Vector2) #c_call;
    bounce: #type (self: *GD_Vector2) #c_call;
    reflect: #type (self: *GD_Vector2) #c_call;
    cross: #type (self: *GD_Vector2) #c_call;
    abs: #type (self: *GD_Vector2) #c_call;
    sign: #type (self: *GD_Vector2) #c_call;
    clamp: #type (self: *GD_Vector2) #c_call;
    snapped: #type (self: *GD_Vector2) #c_call;
    from_angle: #type (self: *GD_Vector2) #c_call;
}
vector2_bindings: GD_Vector2_Method_Bindings;

init_bindings_vector2 :: () {
    vector2_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2, 0);
    vector2_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2, 1);
    vector2_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2, 2);
    vector2_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2, 3);
}

GD_Vector2i :: struct {
    opaque: [8] u8;
}

GD_Vector2i_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector2i, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector2i, *[1] *GD_Vector2i) #c_call;
    constructor_2: #type (dest: *GD_Vector2i, *[1] *GD_Vector2) #c_call;
    constructor_3: #type (dest: *GD_Vector2i, *[2] *GD_int) #c_call;
    aspect: #type (self: *GD_Vector2i) #c_call;
    max_axis_index: #type (self: *GD_Vector2i) #c_call;
    min_axis_index: #type (self: *GD_Vector2i) #c_call;
    length: #type (self: *GD_Vector2i) #c_call;
    length_squared: #type (self: *GD_Vector2i) #c_call;
    sign: #type (self: *GD_Vector2i) #c_call;
    abs: #type (self: *GD_Vector2i) #c_call;
    clamp: #type (self: *GD_Vector2i) #c_call;
}
vector2i_bindings: GD_Vector2i_Method_Bindings;

init_bindings_vector2i :: () {
    vector2i_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2I, 0);
    vector2i_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2I, 1);
    vector2i_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2I, 2);
    vector2i_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR2I, 3);
}

GD_Rect2 :: struct {
    opaque: [16] u8;
}

GD_Rect2_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Rect2, *void) #c_call;
    constructor_1: #type (dest: *GD_Rect2, *[1] *GD_Rect2) #c_call;
    constructor_2: #type (dest: *GD_Rect2, *[1] *GD_Rect2i) #c_call;
    constructor_3: #type (dest: *GD_Rect2, *[2] *GD_Vector2) #c_call;
    constructor_4: #type (dest: *GD_Rect2, *[4] *GD_float) #c_call;
    get_center: #type (self: *GD_Rect2) #c_call;
    get_area: #type (self: *GD_Rect2) #c_call;
    has_area: #type (self: *GD_Rect2) #c_call;
    has_point: #type (self: *GD_Rect2) #c_call;
    is_equal_approx: #type (self: *GD_Rect2) #c_call;
    is_finite: #type (self: *GD_Rect2) #c_call;
    intersects: #type (self: *GD_Rect2) #c_call;
    encloses: #type (self: *GD_Rect2) #c_call;
    intersection: #type (self: *GD_Rect2) #c_call;
    merge: #type (self: *GD_Rect2) #c_call;
    expand: #type (self: *GD_Rect2) #c_call;
    grow: #type (self: *GD_Rect2) #c_call;
    grow_side: #type (self: *GD_Rect2) #c_call;
    grow_individual: #type (self: *GD_Rect2) #c_call;
    abs: #type (self: *GD_Rect2) #c_call;
}
rect2_bindings: GD_Rect2_Method_Bindings;

init_bindings_rect2 :: () {
    rect2_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.RECT2, 0);
    rect2_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.RECT2, 1);
    rect2_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.RECT2, 2);
    rect2_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.RECT2, 3);
    rect2_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.RECT2, 4);
}

GD_Rect2i :: struct {
    opaque: [16] u8;
}

GD_Rect2i_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Rect2i, *void) #c_call;
    constructor_1: #type (dest: *GD_Rect2i, *[1] *GD_Rect2i) #c_call;
    constructor_2: #type (dest: *GD_Rect2i, *[1] *GD_Rect2) #c_call;
    constructor_3: #type (dest: *GD_Rect2i, *[2] *GD_Vector2i) #c_call;
    constructor_4: #type (dest: *GD_Rect2i, *[4] *GD_int) #c_call;
    get_center: #type (self: *GD_Rect2i) #c_call;
    get_area: #type (self: *GD_Rect2i) #c_call;
    has_area: #type (self: *GD_Rect2i) #c_call;
    has_point: #type (self: *GD_Rect2i) #c_call;
    intersects: #type (self: *GD_Rect2i) #c_call;
    encloses: #type (self: *GD_Rect2i) #c_call;
    intersection: #type (self: *GD_Rect2i) #c_call;
    merge: #type (self: *GD_Rect2i) #c_call;
    expand: #type (self: *GD_Rect2i) #c_call;
    grow: #type (self: *GD_Rect2i) #c_call;
    grow_side: #type (self: *GD_Rect2i) #c_call;
    grow_individual: #type (self: *GD_Rect2i) #c_call;
    abs: #type (self: *GD_Rect2i) #c_call;
}
rect2i_bindings: GD_Rect2i_Method_Bindings;

init_bindings_rect2i :: () {
    rect2i_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.RECT2I, 0);
    rect2i_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.RECT2I, 1);
    rect2i_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.RECT2I, 2);
    rect2i_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.RECT2I, 3);
    rect2i_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.RECT2I, 4);
}

GD_Vector3 :: struct {
    opaque: [12] u8;
}

GD_Vector3_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector3, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector3, *[1] *GD_Vector3) #c_call;
    constructor_2: #type (dest: *GD_Vector3, *[1] *GD_Vector3i) #c_call;
    constructor_3: #type (dest: *GD_Vector3, *[3] *GD_float) #c_call;
    min_axis_index: #type (self: *GD_Vector3) #c_call;
    max_axis_index: #type (self: *GD_Vector3) #c_call;
    angle_to: #type (self: *GD_Vector3) #c_call;
    signed_angle_to: #type (self: *GD_Vector3) #c_call;
    direction_to: #type (self: *GD_Vector3) #c_call;
    distance_to: #type (self: *GD_Vector3) #c_call;
    distance_squared_to: #type (self: *GD_Vector3) #c_call;
    length: #type (self: *GD_Vector3) #c_call;
    length_squared: #type (self: *GD_Vector3) #c_call;
    limit_length: #type (self: *GD_Vector3) #c_call;
    normalized: #type (self: *GD_Vector3) #c_call;
    is_normalized: #type (self: *GD_Vector3) #c_call;
    is_equal_approx: #type (self: *GD_Vector3) #c_call;
    is_zero_approx: #type (self: *GD_Vector3) #c_call;
    is_finite: #type (self: *GD_Vector3) #c_call;
    inverse: #type (self: *GD_Vector3) #c_call;
    clamp: #type (self: *GD_Vector3) #c_call;
    snapped: #type (self: *GD_Vector3) #c_call;
    rotated: #type (self: *GD_Vector3) #c_call;
    lerp: #type (self: *GD_Vector3) #c_call;
    slerp: #type (self: *GD_Vector3) #c_call;
    cubic_interpolate: #type (self: *GD_Vector3) #c_call;
    cubic_interpolate_in_time: #type (self: *GD_Vector3) #c_call;
    bezier_interpolate: #type (self: *GD_Vector3) #c_call;
    move_toward: #type (self: *GD_Vector3) #c_call;
    dot: #type (self: *GD_Vector3) #c_call;
    cross: #type (self: *GD_Vector3) #c_call;
    outer: #type (self: *GD_Vector3) #c_call;
    abs: #type (self: *GD_Vector3) #c_call;
    floor: #type (self: *GD_Vector3) #c_call;
    ceil: #type (self: *GD_Vector3) #c_call;
    round: #type (self: *GD_Vector3) #c_call;
    posmod: #type (self: *GD_Vector3) #c_call;
    posmodv: #type (self: *GD_Vector3) #c_call;
    project: #type (self: *GD_Vector3) #c_call;
    slide: #type (self: *GD_Vector3) #c_call;
    bounce: #type (self: *GD_Vector3) #c_call;
    reflect: #type (self: *GD_Vector3) #c_call;
    sign: #type (self: *GD_Vector3) #c_call;
    octahedron_encode: #type (self: *GD_Vector3) #c_call;
    octahedron_decode: #type (self: *GD_Vector3) #c_call;
}
vector3_bindings: GD_Vector3_Method_Bindings;

init_bindings_vector3 :: () {
    vector3_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3, 0);
    vector3_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3, 1);
    vector3_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3, 2);
    vector3_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3, 3);
}

GD_Vector3i :: struct {
    opaque: [12] u8;
}

GD_Vector3i_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector3i, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector3i, *[1] *GD_Vector3i) #c_call;
    constructor_2: #type (dest: *GD_Vector3i, *[1] *GD_Vector3) #c_call;
    constructor_3: #type (dest: *GD_Vector3i, *[3] *GD_int) #c_call;
    min_axis_index: #type (self: *GD_Vector3i) #c_call;
    max_axis_index: #type (self: *GD_Vector3i) #c_call;
    length: #type (self: *GD_Vector3i) #c_call;
    length_squared: #type (self: *GD_Vector3i) #c_call;
    sign: #type (self: *GD_Vector3i) #c_call;
    abs: #type (self: *GD_Vector3i) #c_call;
    clamp: #type (self: *GD_Vector3i) #c_call;
}
vector3i_bindings: GD_Vector3i_Method_Bindings;

init_bindings_vector3i :: () {
    vector3i_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3I, 0);
    vector3i_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3I, 1);
    vector3i_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3I, 2);
    vector3i_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR3I, 3);
}

GD_Transform2D :: struct {
    opaque: [24] u8;
}

GD_Transform2D_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Transform2D, *void) #c_call;
    constructor_1: #type (dest: *GD_Transform2D, *[1] *GD_Transform2D) #c_call;
    constructor_2: #type (dest: *GD_Transform2D, *[2] *GDNativeVariantPtr) #c_call;
    constructor_3: #type (dest: *GD_Transform2D, *[4] *GDNativeVariantPtr) #c_call;
    constructor_4: #type (dest: *GD_Transform2D, *[3] *GD_Vector2) #c_call;
    inverse: #type (self: *GD_Transform2D) #c_call;
    affine_inverse: #type (self: *GD_Transform2D) #c_call;
    get_rotation: #type (self: *GD_Transform2D) #c_call;
    get_origin: #type (self: *GD_Transform2D) #c_call;
    get_scale: #type (self: *GD_Transform2D) #c_call;
    get_skew: #type (self: *GD_Transform2D) #c_call;
    orthonormalized: #type (self: *GD_Transform2D) #c_call;
    rotated: #type (self: *GD_Transform2D) #c_call;
    rotated_local: #type (self: *GD_Transform2D) #c_call;
    scaled: #type (self: *GD_Transform2D) #c_call;
    scaled_local: #type (self: *GD_Transform2D) #c_call;
    translated: #type (self: *GD_Transform2D) #c_call;
    translated_local: #type (self: *GD_Transform2D) #c_call;
    basis_xform: #type (self: *GD_Transform2D) #c_call;
    basis_xform_inv: #type (self: *GD_Transform2D) #c_call;
    interpolate_with: #type (self: *GD_Transform2D) #c_call;
    is_equal_approx: #type (self: *GD_Transform2D) #c_call;
    is_finite: #type (self: *GD_Transform2D) #c_call;
    set_rotation: #type (self: *GD_Transform2D) #c_call;
    set_scale: #type (self: *GD_Transform2D) #c_call;
    set_skew: #type (self: *GD_Transform2D) #c_call;
    looking_at: #type (self: *GD_Transform2D) #c_call;
}
transform2d_bindings: GD_Transform2D_Method_Bindings;

init_bindings_transform2d :: () {
    transform2d_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM2D, 0);
    transform2d_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM2D, 1);
    transform2d_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM2D, 2);
    transform2d_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM2D, 3);
    transform2d_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM2D, 4);
}

GD_Vector4 :: struct {
    opaque: [16] u8;
}

GD_Vector4_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector4, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector4, *[1] *GD_Vector4) #c_call;
    constructor_2: #type (dest: *GD_Vector4, *[1] *GD_Vector4i) #c_call;
    constructor_3: #type (dest: *GD_Vector4, *[4] *GD_float) #c_call;
    min_axis_index: #type (self: *GD_Vector4) #c_call;
    max_axis_index: #type (self: *GD_Vector4) #c_call;
    length: #type (self: *GD_Vector4) #c_call;
    length_squared: #type (self: *GD_Vector4) #c_call;
    abs: #type (self: *GD_Vector4) #c_call;
    sign: #type (self: *GD_Vector4) #c_call;
    floor: #type (self: *GD_Vector4) #c_call;
    ceil: #type (self: *GD_Vector4) #c_call;
    round: #type (self: *GD_Vector4) #c_call;
    lerp: #type (self: *GD_Vector4) #c_call;
    cubic_interpolate: #type (self: *GD_Vector4) #c_call;
    cubic_interpolate_in_time: #type (self: *GD_Vector4) #c_call;
    posmod: #type (self: *GD_Vector4) #c_call;
    posmodv: #type (self: *GD_Vector4) #c_call;
    snapped: #type (self: *GD_Vector4) #c_call;
    clamp: #type (self: *GD_Vector4) #c_call;
    normalized: #type (self: *GD_Vector4) #c_call;
    is_normalized: #type (self: *GD_Vector4) #c_call;
    direction_to: #type (self: *GD_Vector4) #c_call;
    distance_to: #type (self: *GD_Vector4) #c_call;
    distance_squared_to: #type (self: *GD_Vector4) #c_call;
    dot: #type (self: *GD_Vector4) #c_call;
    inverse: #type (self: *GD_Vector4) #c_call;
    is_equal_approx: #type (self: *GD_Vector4) #c_call;
    is_zero_approx: #type (self: *GD_Vector4) #c_call;
    is_finite: #type (self: *GD_Vector4) #c_call;
}
vector4_bindings: GD_Vector4_Method_Bindings;

init_bindings_vector4 :: () {
    vector4_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4, 0);
    vector4_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4, 1);
    vector4_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4, 2);
    vector4_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4, 3);
}

GD_Vector4i :: struct {
    opaque: [16] u8;
}

GD_Vector4i_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Vector4i, *void) #c_call;
    constructor_1: #type (dest: *GD_Vector4i, *[1] *GD_Vector4i) #c_call;
    constructor_2: #type (dest: *GD_Vector4i, *[1] *GD_Vector4) #c_call;
    constructor_3: #type (dest: *GD_Vector4i, *[4] *GD_int) #c_call;
    min_axis_index: #type (self: *GD_Vector4i) #c_call;
    max_axis_index: #type (self: *GD_Vector4i) #c_call;
    length: #type (self: *GD_Vector4i) #c_call;
    length_squared: #type (self: *GD_Vector4i) #c_call;
    sign: #type (self: *GD_Vector4i) #c_call;
    abs: #type (self: *GD_Vector4i) #c_call;
    clamp: #type (self: *GD_Vector4i) #c_call;
}
vector4i_bindings: GD_Vector4i_Method_Bindings;

init_bindings_vector4i :: () {
    vector4i_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4I, 0);
    vector4i_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4I, 1);
    vector4i_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4I, 2);
    vector4i_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.VECTOR4I, 3);
}

GD_Plane :: struct {
    opaque: [16] u8;
}

GD_Plane_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Plane, *void) #c_call;
    constructor_1: #type (dest: *GD_Plane, *[1] *GD_Plane) #c_call;
    constructor_2: #type (dest: *GD_Plane, *[1] *GD_Vector3) #c_call;
    constructor_3: #type (dest: *GD_Plane, *[2] *GDNativeVariantPtr) #c_call;
    constructor_4: #type (dest: *GD_Plane, *[2] *GD_Vector3) #c_call;
    constructor_5: #type (dest: *GD_Plane, *[3] *GD_Vector3) #c_call;
    constructor_6: #type (dest: *GD_Plane, *[4] *GD_float) #c_call;
    normalized: #type (self: *GD_Plane) #c_call;
    center: #type (self: *GD_Plane) #c_call;
    is_equal_approx: #type (self: *GD_Plane) #c_call;
    is_finite: #type (self: *GD_Plane) #c_call;
    is_point_over: #type (self: *GD_Plane) #c_call;
    distance_to: #type (self: *GD_Plane) #c_call;
    has_point: #type (self: *GD_Plane) #c_call;
    project: #type (self: *GD_Plane) #c_call;
    intersect_3: #type (self: *GD_Plane) #c_call;
    intersects_ray: #type (self: *GD_Plane) #c_call;
    intersects_segment: #type (self: *GD_Plane) #c_call;
}
plane_bindings: GD_Plane_Method_Bindings;

init_bindings_plane :: () {
    plane_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 0);
    plane_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 1);
    plane_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 2);
    plane_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 3);
    plane_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 4);
    plane_bindings.constructor_5 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 5);
    plane_bindings.constructor_6 = xx gdn_interface.variant_get_ptr_constructor(.PLANE, 6);
}

GD_Quaternion :: struct {
    opaque: [16] u8;
}

GD_Quaternion_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Quaternion, *void) #c_call;
    constructor_1: #type (dest: *GD_Quaternion, *[1] *GD_Quaternion) #c_call;
    constructor_2: #type (dest: *GD_Quaternion, *[1] *GD_Basis) #c_call;
    constructor_3: #type (dest: *GD_Quaternion, *[2] *GDNativeVariantPtr) #c_call;
    constructor_4: #type (dest: *GD_Quaternion, *[2] *GD_Vector3) #c_call;
    constructor_5: #type (dest: *GD_Quaternion, *[4] *GD_float) #c_call;
    length: #type (self: *GD_Quaternion) #c_call;
    length_squared: #type (self: *GD_Quaternion) #c_call;
    normalized: #type (self: *GD_Quaternion) #c_call;
    is_normalized: #type (self: *GD_Quaternion) #c_call;
    is_equal_approx: #type (self: *GD_Quaternion) #c_call;
    is_finite: #type (self: *GD_Quaternion) #c_call;
    inverse: #type (self: *GD_Quaternion) #c_call;
    log: #type (self: *GD_Quaternion) #c_call;
    exp: #type (self: *GD_Quaternion) #c_call;
    angle_to: #type (self: *GD_Quaternion) #c_call;
    dot: #type (self: *GD_Quaternion) #c_call;
    slerp: #type (self: *GD_Quaternion) #c_call;
    slerpni: #type (self: *GD_Quaternion) #c_call;
    spherical_cubic_interpolate: #type (self: *GD_Quaternion) #c_call;
    spherical_cubic_interpolate_in_time: #type (self: *GD_Quaternion) #c_call;
    get_euler: #type (self: *GD_Quaternion) #c_call;
    from_euler: #type (self: *GD_Quaternion) #c_call;
    get_axis: #type (self: *GD_Quaternion) #c_call;
    get_angle: #type (self: *GD_Quaternion) #c_call;
}
quaternion_bindings: GD_Quaternion_Method_Bindings;

init_bindings_quaternion :: () {
    quaternion_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 0);
    quaternion_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 1);
    quaternion_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 2);
    quaternion_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 3);
    quaternion_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 4);
    quaternion_bindings.constructor_5 = xx gdn_interface.variant_get_ptr_constructor(.QUATERNION, 5);
}

GD_AABB :: struct {
    opaque: [24] u8;
}

GD_AABB_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_AABB, *void) #c_call;
    constructor_1: #type (dest: *GD_AABB, *[1] *GD_AABB) #c_call;
    constructor_2: #type (dest: *GD_AABB, *[2] *GD_Vector3) #c_call;
    abs: #type (self: *GD_AABB) #c_call;
    get_center: #type (self: *GD_AABB) #c_call;
    get_volume: #type (self: *GD_AABB) #c_call;
    has_volume: #type (self: *GD_AABB) #c_call;
    has_surface: #type (self: *GD_AABB) #c_call;
    has_point: #type (self: *GD_AABB) #c_call;
    is_equal_approx: #type (self: *GD_AABB) #c_call;
    is_finite: #type (self: *GD_AABB) #c_call;
    intersects: #type (self: *GD_AABB) #c_call;
    encloses: #type (self: *GD_AABB) #c_call;
    intersects_plane: #type (self: *GD_AABB) #c_call;
    intersection: #type (self: *GD_AABB) #c_call;
    merge: #type (self: *GD_AABB) #c_call;
    expand: #type (self: *GD_AABB) #c_call;
    grow: #type (self: *GD_AABB) #c_call;
    get_support: #type (self: *GD_AABB) #c_call;
    get_longest_axis: #type (self: *GD_AABB) #c_call;
    get_longest_axis_index: #type (self: *GD_AABB) #c_call;
    get_longest_axis_size: #type (self: *GD_AABB) #c_call;
    get_shortest_axis: #type (self: *GD_AABB) #c_call;
    get_shortest_axis_index: #type (self: *GD_AABB) #c_call;
    get_shortest_axis_size: #type (self: *GD_AABB) #c_call;
    get_endpoint: #type (self: *GD_AABB) #c_call;
    intersects_segment: #type (self: *GD_AABB) #c_call;
    intersects_ray: #type (self: *GD_AABB) #c_call;
}
aabb_bindings: GD_AABB_Method_Bindings;

init_bindings_aabb :: () {
    aabb_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.AABB, 0);
    aabb_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.AABB, 1);
    aabb_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.AABB, 2);
}

GD_Basis :: struct {
    opaque: [36] u8;
}

GD_Basis_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Basis, *void) #c_call;
    constructor_1: #type (dest: *GD_Basis, *[1] *GD_Basis) #c_call;
    constructor_2: #type (dest: *GD_Basis, *[1] *GD_Quaternion) #c_call;
    constructor_3: #type (dest: *GD_Basis, *[2] *GDNativeVariantPtr) #c_call;
    constructor_4: #type (dest: *GD_Basis, *[3] *GD_Vector3) #c_call;
    inverse: #type (self: *GD_Basis) #c_call;
    transposed: #type (self: *GD_Basis) #c_call;
    orthonormalized: #type (self: *GD_Basis) #c_call;
    determinant: #type (self: *GD_Basis) #c_call;
    rotated: #type (self: *GD_Basis) #c_call;
    scaled: #type (self: *GD_Basis) #c_call;
    get_scale: #type (self: *GD_Basis) #c_call;
    get_euler: #type (self: *GD_Basis) #c_call;
    tdotx: #type (self: *GD_Basis) #c_call;
    tdoty: #type (self: *GD_Basis) #c_call;
    tdotz: #type (self: *GD_Basis) #c_call;
    slerp: #type (self: *GD_Basis) #c_call;
    is_equal_approx: #type (self: *GD_Basis) #c_call;
    is_finite: #type (self: *GD_Basis) #c_call;
    get_rotation_quaternion: #type (self: *GD_Basis) #c_call;
    looking_at: #type (self: *GD_Basis) #c_call;
    from_scale: #type (self: *GD_Basis) #c_call;
    from_euler: #type (self: *GD_Basis) #c_call;
}
basis_bindings: GD_Basis_Method_Bindings;

init_bindings_basis :: () {
    basis_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.BASIS, 0);
    basis_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.BASIS, 1);
    basis_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.BASIS, 2);
    basis_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.BASIS, 3);
    basis_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.BASIS, 4);
}

GD_Transform3D :: struct {
    opaque: [48] u8;
}

GD_Transform3D_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Transform3D, *void) #c_call;
    constructor_1: #type (dest: *GD_Transform3D, *[1] *GD_Transform3D) #c_call;
    constructor_2: #type (dest: *GD_Transform3D, *[2] *GDNativeVariantPtr) #c_call;
    constructor_3: #type (dest: *GD_Transform3D, *[4] *GD_Vector3) #c_call;
    constructor_4: #type (dest: *GD_Transform3D, *[1] *GD_Projection) #c_call;
    inverse: #type (self: *GD_Transform3D) #c_call;
    affine_inverse: #type (self: *GD_Transform3D) #c_call;
    orthonormalized: #type (self: *GD_Transform3D) #c_call;
    rotated: #type (self: *GD_Transform3D) #c_call;
    rotated_local: #type (self: *GD_Transform3D) #c_call;
    scaled: #type (self: *GD_Transform3D) #c_call;
    scaled_local: #type (self: *GD_Transform3D) #c_call;
    translated: #type (self: *GD_Transform3D) #c_call;
    translated_local: #type (self: *GD_Transform3D) #c_call;
    looking_at: #type (self: *GD_Transform3D) #c_call;
    interpolate_with: #type (self: *GD_Transform3D) #c_call;
    is_equal_approx: #type (self: *GD_Transform3D) #c_call;
    is_finite: #type (self: *GD_Transform3D) #c_call;
}
transform3d_bindings: GD_Transform3D_Method_Bindings;

init_bindings_transform3d :: () {
    transform3d_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM3D, 0);
    transform3d_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM3D, 1);
    transform3d_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM3D, 2);
    transform3d_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM3D, 3);
    transform3d_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.TRANSFORM3D, 4);
}

GD_Projection :: struct {
    opaque: [64] u8;
}

GD_Projection_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Projection, *void) #c_call;
    constructor_1: #type (dest: *GD_Projection, *[1] *GD_Projection) #c_call;
    constructor_2: #type (dest: *GD_Projection, *[1] *GD_Transform3D) #c_call;
    constructor_3: #type (dest: *GD_Projection, *[4] *GD_Vector4) #c_call;
    create_depth_correction: #type (self: *GD_Projection) #c_call;
    create_light_atlas_rect: #type (self: *GD_Projection) #c_call;
    create_perspective: #type (self: *GD_Projection) #c_call;
    create_perspective_hmd: #type (self: *GD_Projection) #c_call;
    create_for_hmd: #type (self: *GD_Projection) #c_call;
    create_orthogonal: #type (self: *GD_Projection) #c_call;
    create_orthogonal_aspect: #type (self: *GD_Projection) #c_call;
    create_frustum: #type (self: *GD_Projection) #c_call;
    create_frustum_aspect: #type (self: *GD_Projection) #c_call;
    create_fit_aabb: #type (self: *GD_Projection) #c_call;
    determinant: #type (self: *GD_Projection) #c_call;
    perspective_znear_adjusted: #type (self: *GD_Projection) #c_call;
    get_projection_plane: #type (self: *GD_Projection) #c_call;
    flipped_y: #type (self: *GD_Projection) #c_call;
    jitter_offseted: #type (self: *GD_Projection) #c_call;
    get_fovy: #type (self: *GD_Projection) #c_call;
    get_z_far: #type (self: *GD_Projection) #c_call;
    get_z_near: #type (self: *GD_Projection) #c_call;
    get_aspect: #type (self: *GD_Projection) #c_call;
    get_fov: #type (self: *GD_Projection) #c_call;
    is_orthogonal: #type (self: *GD_Projection) #c_call;
    get_viewport_half_extents: #type (self: *GD_Projection) #c_call;
    get_far_plane_half_extents: #type (self: *GD_Projection) #c_call;
    inverse: #type (self: *GD_Projection) #c_call;
    get_pixels_per_meter: #type (self: *GD_Projection) #c_call;
    get_lod_multiplier: #type (self: *GD_Projection) #c_call;
}
projection_bindings: GD_Projection_Method_Bindings;

init_bindings_projection :: () {
    projection_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PROJECTION, 0);
    projection_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PROJECTION, 1);
    projection_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PROJECTION, 2);
    projection_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.PROJECTION, 3);
}

GD_Color :: struct {
    opaque: [16] u8;
}

GD_Color_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Color, *void) #c_call;
    constructor_1: #type (dest: *GD_Color, *[1] *GD_Color) #c_call;
    constructor_2: #type (dest: *GD_Color, *[2] *GDNativeVariantPtr) #c_call;
    constructor_3: #type (dest: *GD_Color, *[3] *GD_float) #c_call;
    constructor_4: #type (dest: *GD_Color, *[4] *GD_float) #c_call;
    constructor_5: #type (dest: *GD_Color, *[1] *GD_String) #c_call;
    constructor_6: #type (dest: *GD_Color, *[2] *GDNativeVariantPtr) #c_call;
    to_argb32: #type (self: *GD_Color) #c_call;
    to_abgr32: #type (self: *GD_Color) #c_call;
    to_rgba32: #type (self: *GD_Color) #c_call;
    to_argb64: #type (self: *GD_Color) #c_call;
    to_abgr64: #type (self: *GD_Color) #c_call;
    to_rgba64: #type (self: *GD_Color) #c_call;
    to_html: #type (self: *GD_Color) #c_call;
    clamp: #type (self: *GD_Color) #c_call;
    inverted: #type (self: *GD_Color) #c_call;
    lerp: #type (self: *GD_Color) #c_call;
    lightened: #type (self: *GD_Color) #c_call;
    darkened: #type (self: *GD_Color) #c_call;
    blend: #type (self: *GD_Color) #c_call;
    get_luminance: #type (self: *GD_Color) #c_call;
    srgb_to_linear: #type (self: *GD_Color) #c_call;
    linear_to_srgb: #type (self: *GD_Color) #c_call;
    is_equal_approx: #type (self: *GD_Color) #c_call;
    hex: #type (self: *GD_Color) #c_call;
    hex64: #type (self: *GD_Color) #c_call;
    html: #type (self: *GD_Color) #c_call;
    html_is_valid: #type (self: *GD_Color) #c_call;
    from_string: #type (self: *GD_Color) #c_call;
    from_hsv: #type (self: *GD_Color) #c_call;
    from_ok_hsl: #type (self: *GD_Color) #c_call;
    from_rgbe9995: #type (self: *GD_Color) #c_call;
}
color_bindings: GD_Color_Method_Bindings;

init_bindings_color :: () {
    color_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 0);
    color_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 1);
    color_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 2);
    color_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 3);
    color_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 4);
    color_bindings.constructor_5 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 5);
    color_bindings.constructor_6 = xx gdn_interface.variant_get_ptr_constructor(.COLOR, 6);
}

GD_StringName :: struct {
    opaque: [8] u8;
}

GD_StringName_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_StringName, *void) #c_call;
    constructor_1: #type (dest: *GD_StringName, *[1] *GD_StringName) #c_call;
    constructor_2: #type (dest: *GD_StringName, *[1] *GD_String) #c_call;
    destructor: #type (self: *GD_StringName) #c_call;
    hash: #type (self: *GD_StringName) #c_call;
}
string_name_bindings: GD_StringName_Method_Bindings;

init_bindings_string_name :: () {
    string_name_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.STRING_NAME, 0);
    string_name_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.STRING_NAME, 1);
    string_name_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.STRING_NAME, 2);
    string_name_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.STRING_NAME);
}

GD_NodePath :: struct {
    opaque: [8] u8;
}

GD_NodePath_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_NodePath, *void) #c_call;
    constructor_1: #type (dest: *GD_NodePath, *[1] *GD_NodePath) #c_call;
    constructor_2: #type (dest: *GD_NodePath, *[1] *GD_String) #c_call;
    destructor: #type (self: *GD_NodePath) #c_call;
    is_absolute: #type (self: *GD_NodePath) #c_call;
    get_name_count: #type (self: *GD_NodePath) #c_call;
    get_name: #type (self: *GD_NodePath) #c_call;
    get_subname_count: #type (self: *GD_NodePath) #c_call;
    hash: #type (self: *GD_NodePath) #c_call;
    get_subname: #type (self: *GD_NodePath) #c_call;
    get_concatenated_names: #type (self: *GD_NodePath) #c_call;
    get_concatenated_subnames: #type (self: *GD_NodePath) #c_call;
    get_as_property_path: #type (self: *GD_NodePath) #c_call;
    is_empty: #type (self: *GD_NodePath) #c_call;
}
node_path_bindings: GD_NodePath_Method_Bindings;

init_bindings_node_path :: () {
    node_path_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.NODE_PATH, 0);
    node_path_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.NODE_PATH, 1);
    node_path_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.NODE_PATH, 2);
    node_path_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.NODE_PATH);
}

GD_RID :: struct {
    opaque: [8] u8;
}

GD_RID_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_RID, *void) #c_call;
    constructor_1: #type (dest: *GD_RID, *[1] *GD_RID) #c_call;
    is_valid: #type (self: *GD_RID) #c_call;
    get_id: #type (self: *GD_RID) #c_call;
}
rid_bindings: GD_RID_Method_Bindings;

init_bindings_rid :: () {
    rid_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.RID, 0);
    rid_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.RID, 1);
}

GD_Callable :: struct {
    opaque: [16] u8;
}

GD_Callable_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Callable, *void) #c_call;
    constructor_1: #type (dest: *GD_Callable, *[1] *GD_Callable) #c_call;
    constructor_2: #type (dest: *GD_Callable, *[2] *GDNativeVariantPtr) #c_call;
    destructor: #type (self: *GD_Callable) #c_call;
    callv: #type (self: *GD_Callable) #c_call;
    is_null: #type (self: *GD_Callable) #c_call;
    is_custom: #type (self: *GD_Callable) #c_call;
    is_standard: #type (self: *GD_Callable) #c_call;
    is_valid: #type (self: *GD_Callable) #c_call;
    get_object: #type (self: *GD_Callable) #c_call;
    get_object_id: #type (self: *GD_Callable) #c_call;
    get_method: #type (self: *GD_Callable) #c_call;
    hash: #type (self: *GD_Callable) #c_call;
    unbind: #type (self: *GD_Callable) #c_call;
    call: #type (self: *GD_Callable) #c_call;
    call_deferred: #type (self: *GD_Callable) #c_call;
    rpc: #type (self: *GD_Callable) #c_call;
    rpc_id: #type (self: *GD_Callable) #c_call;
    bind: #type (self: *GD_Callable) #c_call;
}
callable_bindings: GD_Callable_Method_Bindings;

init_bindings_callable :: () {
    callable_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.CALLABLE, 0);
    callable_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.CALLABLE, 1);
    callable_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.CALLABLE, 2);
    callable_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.CALLABLE);
}

GD_Signal :: struct {
    opaque: [16] u8;
}

GD_Signal_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Signal, *void) #c_call;
    constructor_1: #type (dest: *GD_Signal, *[1] *GD_Signal) #c_call;
    constructor_2: #type (dest: *GD_Signal, *[2] *GDNativeVariantPtr) #c_call;
    destructor: #type (self: *GD_Signal) #c_call;
    is_null: #type (self: *GD_Signal) #c_call;
    get_object: #type (self: *GD_Signal) #c_call;
    get_object_id: #type (self: *GD_Signal) #c_call;
    get_name: #type (self: *GD_Signal) #c_call;
    connect: #type (self: *GD_Signal) #c_call;
    disconnect: #type (self: *GD_Signal) #c_call;
    is_connected: #type (self: *GD_Signal) #c_call;
    get_connections: #type (self: *GD_Signal) #c_call;
    emit: #type (self: *GD_Signal) #c_call;
}
signal_bindings: GD_Signal_Method_Bindings;

init_bindings_signal :: () {
    signal_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.SIGNAL, 0);
    signal_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.SIGNAL, 1);
    signal_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.SIGNAL, 2);
    signal_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.SIGNAL);
}

GD_Dictionary :: struct {
    opaque: [8] u8;
}

GD_Dictionary_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Dictionary, *void) #c_call;
    constructor_1: #type (dest: *GD_Dictionary, *[1] *GD_Dictionary) #c_call;
    destructor: #type (self: *GD_Dictionary) #c_call;
    size: #type (self: *GD_Dictionary) #c_call;
    is_empty: #type (self: *GD_Dictionary) #c_call;
    clear: #type (self: *GD_Dictionary) #c_call;
    merge: #type (self: *GD_Dictionary) #c_call;
    has: #type (self: *GD_Dictionary) #c_call;
    has_all: #type (self: *GD_Dictionary) #c_call;
    find_key: #type (self: *GD_Dictionary) #c_call;
    erase: #type (self: *GD_Dictionary) #c_call;
    hash: #type (self: *GD_Dictionary) #c_call;
    keys: #type (self: *GD_Dictionary) #c_call;
    values: #type (self: *GD_Dictionary) #c_call;
    duplicate: #type (self: *GD_Dictionary) #c_call;
    get: #type (self: *GD_Dictionary) #c_call;
}
dictionary_bindings: GD_Dictionary_Method_Bindings;

init_bindings_dictionary :: () {
    dictionary_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.DICTIONARY, 0);
    dictionary_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.DICTIONARY, 1);
    dictionary_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.DICTIONARY);
}

GD_Array :: struct {
    opaque: [8] u8;
}

GD_Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_Array, *void) #c_call;
    constructor_1: #type (dest: *GD_Array, *[1] *GD_Array) #c_call;
    constructor_2: #type (dest: *GD_Array, *[4] *GDNativeVariantPtr) #c_call;
    constructor_3: #type (dest: *GD_Array, *[1] *GD_PackedByteArray) #c_call;
    constructor_4: #type (dest: *GD_Array, *[1] *GD_PackedInt32Array) #c_call;
    constructor_5: #type (dest: *GD_Array, *[1] *GD_PackedInt64Array) #c_call;
    constructor_6: #type (dest: *GD_Array, *[1] *GD_PackedFloat32Array) #c_call;
    constructor_7: #type (dest: *GD_Array, *[1] *GD_PackedFloat64Array) #c_call;
    constructor_8: #type (dest: *GD_Array, *[1] *GD_PackedStringArray) #c_call;
    constructor_9: #type (dest: *GD_Array, *[1] *GD_PackedVector2Array) #c_call;
    constructor_10: #type (dest: *GD_Array, *[1] *GD_PackedVector3Array) #c_call;
    constructor_11: #type (dest: *GD_Array, *[1] *GD_PackedColorArray) #c_call;
    destructor: #type (self: *GD_Array) #c_call;
    size: #type (self: *GD_Array) #c_call;
    is_empty: #type (self: *GD_Array) #c_call;
    clear: #type (self: *GD_Array) #c_call;
    hash: #type (self: *GD_Array) #c_call;
    push_back: #type (self: *GD_Array) #c_call;
    push_front: #type (self: *GD_Array) #c_call;
    append: #type (self: *GD_Array) #c_call;
    append_array: #type (self: *GD_Array) #c_call;
    resize: #type (self: *GD_Array) #c_call;
    insert: #type (self: *GD_Array) #c_call;
    remove_at: #type (self: *GD_Array) #c_call;
    fill: #type (self: *GD_Array) #c_call;
    erase: #type (self: *GD_Array) #c_call;
    front: #type (self: *GD_Array) #c_call;
    back: #type (self: *GD_Array) #c_call;
    pick_random: #type (self: *GD_Array) #c_call;
    find: #type (self: *GD_Array) #c_call;
    rfind: #type (self: *GD_Array) #c_call;
    find_last: #type (self: *GD_Array) #c_call;
    count: #type (self: *GD_Array) #c_call;
    has: #type (self: *GD_Array) #c_call;
    pop_back: #type (self: *GD_Array) #c_call;
    pop_front: #type (self: *GD_Array) #c_call;
    pop_at: #type (self: *GD_Array) #c_call;
    sort: #type (self: *GD_Array) #c_call;
    sort_custom: #type (self: *GD_Array) #c_call;
    shuffle: #type (self: *GD_Array) #c_call;
    bsearch: #type (self: *GD_Array) #c_call;
    bsearch_custom: #type (self: *GD_Array) #c_call;
    reverse: #type (self: *GD_Array) #c_call;
    duplicate: #type (self: *GD_Array) #c_call;
    slice: #type (self: *GD_Array) #c_call;
    filter: #type (self: *GD_Array) #c_call;
    map: #type (self: *GD_Array) #c_call;
    reduce: #type (self: *GD_Array) #c_call;
    any: #type (self: *GD_Array) #c_call;
    all: #type (self: *GD_Array) #c_call;
    max: #type (self: *GD_Array) #c_call;
    min: #type (self: *GD_Array) #c_call;
    typed_assign: #type (self: *GD_Array) #c_call;
    set_typed: #type (self: *GD_Array) #c_call;
    is_typed: #type (self: *GD_Array) #c_call;
    get_typed_builtin: #type (self: *GD_Array) #c_call;
    get_typed_class_name: #type (self: *GD_Array) #c_call;
    get_typed_script: #type (self: *GD_Array) #c_call;
    set_read_only: #type (self: *GD_Array) #c_call;
    is_read_only: #type (self: *GD_Array) #c_call;
}
array_bindings: GD_Array_Method_Bindings;

init_bindings_array :: () {
    array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 0);
    array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 1);
    array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 2);
    array_bindings.constructor_3 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 3);
    array_bindings.constructor_4 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 4);
    array_bindings.constructor_5 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 5);
    array_bindings.constructor_6 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 6);
    array_bindings.constructor_7 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 7);
    array_bindings.constructor_8 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 8);
    array_bindings.constructor_9 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 9);
    array_bindings.constructor_10 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 10);
    array_bindings.constructor_11 = xx gdn_interface.variant_get_ptr_constructor(.ARRAY, 11);
    array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.ARRAY);
}

GD_PackedByteArray :: struct {
    opaque: [16] u8;
}

GD_PackedByteArray_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedByteArray, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedByteArray, *[1] *GD_PackedByteArray) #c_call;
    constructor_2: #type (dest: *GD_PackedByteArray, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedByteArray) #c_call;
    size: #type (self: *GD_PackedByteArray) #c_call;
    is_empty: #type (self: *GD_PackedByteArray) #c_call;
    set: #type (self: *GD_PackedByteArray) #c_call;
    push_back: #type (self: *GD_PackedByteArray) #c_call;
    append: #type (self: *GD_PackedByteArray) #c_call;
    append_array: #type (self: *GD_PackedByteArray) #c_call;
    remove_at: #type (self: *GD_PackedByteArray) #c_call;
    insert: #type (self: *GD_PackedByteArray) #c_call;
    fill: #type (self: *GD_PackedByteArray) #c_call;
    resize: #type (self: *GD_PackedByteArray) #c_call;
    clear: #type (self: *GD_PackedByteArray) #c_call;
    has: #type (self: *GD_PackedByteArray) #c_call;
    reverse: #type (self: *GD_PackedByteArray) #c_call;
    slice: #type (self: *GD_PackedByteArray) #c_call;
    sort: #type (self: *GD_PackedByteArray) #c_call;
    bsearch: #type (self: *GD_PackedByteArray) #c_call;
    duplicate: #type (self: *GD_PackedByteArray) #c_call;
    find: #type (self: *GD_PackedByteArray) #c_call;
    rfind: #type (self: *GD_PackedByteArray) #c_call;
    count: #type (self: *GD_PackedByteArray) #c_call;
    get_string_from_ascii: #type (self: *GD_PackedByteArray) #c_call;
    get_string_from_utf8: #type (self: *GD_PackedByteArray) #c_call;
    get_string_from_utf16: #type (self: *GD_PackedByteArray) #c_call;
    get_string_from_utf32: #type (self: *GD_PackedByteArray) #c_call;
    hex_encode: #type (self: *GD_PackedByteArray) #c_call;
    compress: #type (self: *GD_PackedByteArray) #c_call;
    decompress: #type (self: *GD_PackedByteArray) #c_call;
    decompress_dynamic: #type (self: *GD_PackedByteArray) #c_call;
    decode_u8: #type (self: *GD_PackedByteArray) #c_call;
    decode_s8: #type (self: *GD_PackedByteArray) #c_call;
    decode_u16: #type (self: *GD_PackedByteArray) #c_call;
    decode_s16: #type (self: *GD_PackedByteArray) #c_call;
    decode_u32: #type (self: *GD_PackedByteArray) #c_call;
    decode_s32: #type (self: *GD_PackedByteArray) #c_call;
    decode_u64: #type (self: *GD_PackedByteArray) #c_call;
    decode_s64: #type (self: *GD_PackedByteArray) #c_call;
    decode_half: #type (self: *GD_PackedByteArray) #c_call;
    decode_float: #type (self: *GD_PackedByteArray) #c_call;
    decode_double: #type (self: *GD_PackedByteArray) #c_call;
    has_encoded_var: #type (self: *GD_PackedByteArray) #c_call;
    decode_var: #type (self: *GD_PackedByteArray) #c_call;
    decode_var_size: #type (self: *GD_PackedByteArray) #c_call;
    to_int32_array: #type (self: *GD_PackedByteArray) #c_call;
    to_int64_array: #type (self: *GD_PackedByteArray) #c_call;
    to_float32_array: #type (self: *GD_PackedByteArray) #c_call;
    to_float64_array: #type (self: *GD_PackedByteArray) #c_call;
    encode_u8: #type (self: *GD_PackedByteArray) #c_call;
    encode_s8: #type (self: *GD_PackedByteArray) #c_call;
    encode_u16: #type (self: *GD_PackedByteArray) #c_call;
    encode_s16: #type (self: *GD_PackedByteArray) #c_call;
    encode_u32: #type (self: *GD_PackedByteArray) #c_call;
    encode_s32: #type (self: *GD_PackedByteArray) #c_call;
    encode_u64: #type (self: *GD_PackedByteArray) #c_call;
    encode_s64: #type (self: *GD_PackedByteArray) #c_call;
    encode_half: #type (self: *GD_PackedByteArray) #c_call;
    encode_float: #type (self: *GD_PackedByteArray) #c_call;
    encode_double: #type (self: *GD_PackedByteArray) #c_call;
    encode_var: #type (self: *GD_PackedByteArray) #c_call;
}
packed_byte_array_bindings: GD_PackedByteArray_Method_Bindings;

init_bindings_packed_byte_array :: () {
    packed_byte_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_BYTE_ARRAY, 0);
    packed_byte_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_BYTE_ARRAY, 1);
    packed_byte_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_BYTE_ARRAY, 2);
    packed_byte_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_BYTE_ARRAY);
}

GD_PackedInt32Array :: struct {
    opaque: [16] u8;
}

GD_PackedInt32Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedInt32Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedInt32Array, *[1] *GD_PackedInt32Array) #c_call;
    constructor_2: #type (dest: *GD_PackedInt32Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedInt32Array) #c_call;
    size: #type (self: *GD_PackedInt32Array) #c_call;
    is_empty: #type (self: *GD_PackedInt32Array) #c_call;
    set: #type (self: *GD_PackedInt32Array) #c_call;
    push_back: #type (self: *GD_PackedInt32Array) #c_call;
    append: #type (self: *GD_PackedInt32Array) #c_call;
    append_array: #type (self: *GD_PackedInt32Array) #c_call;
    remove_at: #type (self: *GD_PackedInt32Array) #c_call;
    insert: #type (self: *GD_PackedInt32Array) #c_call;
    fill: #type (self: *GD_PackedInt32Array) #c_call;
    resize: #type (self: *GD_PackedInt32Array) #c_call;
    clear: #type (self: *GD_PackedInt32Array) #c_call;
    has: #type (self: *GD_PackedInt32Array) #c_call;
    reverse: #type (self: *GD_PackedInt32Array) #c_call;
    slice: #type (self: *GD_PackedInt32Array) #c_call;
    to_byte_array: #type (self: *GD_PackedInt32Array) #c_call;
    sort: #type (self: *GD_PackedInt32Array) #c_call;
    bsearch: #type (self: *GD_PackedInt32Array) #c_call;
    duplicate: #type (self: *GD_PackedInt32Array) #c_call;
    find: #type (self: *GD_PackedInt32Array) #c_call;
    rfind: #type (self: *GD_PackedInt32Array) #c_call;
    count: #type (self: *GD_PackedInt32Array) #c_call;
}
packed_int32_array_bindings: GD_PackedInt32Array_Method_Bindings;

init_bindings_packed_int32_array :: () {
    packed_int32_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT32_ARRAY, 0);
    packed_int32_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT32_ARRAY, 1);
    packed_int32_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT32_ARRAY, 2);
    packed_int32_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_INT32_ARRAY);
}

GD_PackedInt64Array :: struct {
    opaque: [16] u8;
}

GD_PackedInt64Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedInt64Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedInt64Array, *[1] *GD_PackedInt64Array) #c_call;
    constructor_2: #type (dest: *GD_PackedInt64Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedInt64Array) #c_call;
    size: #type (self: *GD_PackedInt64Array) #c_call;
    is_empty: #type (self: *GD_PackedInt64Array) #c_call;
    set: #type (self: *GD_PackedInt64Array) #c_call;
    push_back: #type (self: *GD_PackedInt64Array) #c_call;
    append: #type (self: *GD_PackedInt64Array) #c_call;
    append_array: #type (self: *GD_PackedInt64Array) #c_call;
    remove_at: #type (self: *GD_PackedInt64Array) #c_call;
    insert: #type (self: *GD_PackedInt64Array) #c_call;
    fill: #type (self: *GD_PackedInt64Array) #c_call;
    resize: #type (self: *GD_PackedInt64Array) #c_call;
    clear: #type (self: *GD_PackedInt64Array) #c_call;
    has: #type (self: *GD_PackedInt64Array) #c_call;
    reverse: #type (self: *GD_PackedInt64Array) #c_call;
    slice: #type (self: *GD_PackedInt64Array) #c_call;
    to_byte_array: #type (self: *GD_PackedInt64Array) #c_call;
    sort: #type (self: *GD_PackedInt64Array) #c_call;
    bsearch: #type (self: *GD_PackedInt64Array) #c_call;
    duplicate: #type (self: *GD_PackedInt64Array) #c_call;
    find: #type (self: *GD_PackedInt64Array) #c_call;
    rfind: #type (self: *GD_PackedInt64Array) #c_call;
    count: #type (self: *GD_PackedInt64Array) #c_call;
}
packed_int64_array_bindings: GD_PackedInt64Array_Method_Bindings;

init_bindings_packed_int64_array :: () {
    packed_int64_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT64_ARRAY, 0);
    packed_int64_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT64_ARRAY, 1);
    packed_int64_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_INT64_ARRAY, 2);
    packed_int64_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_INT64_ARRAY);
}

GD_PackedFloat32Array :: struct {
    opaque: [16] u8;
}

GD_PackedFloat32Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedFloat32Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedFloat32Array, *[1] *GD_PackedFloat32Array) #c_call;
    constructor_2: #type (dest: *GD_PackedFloat32Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedFloat32Array) #c_call;
    size: #type (self: *GD_PackedFloat32Array) #c_call;
    is_empty: #type (self: *GD_PackedFloat32Array) #c_call;
    set: #type (self: *GD_PackedFloat32Array) #c_call;
    push_back: #type (self: *GD_PackedFloat32Array) #c_call;
    append: #type (self: *GD_PackedFloat32Array) #c_call;
    append_array: #type (self: *GD_PackedFloat32Array) #c_call;
    remove_at: #type (self: *GD_PackedFloat32Array) #c_call;
    insert: #type (self: *GD_PackedFloat32Array) #c_call;
    fill: #type (self: *GD_PackedFloat32Array) #c_call;
    resize: #type (self: *GD_PackedFloat32Array) #c_call;
    clear: #type (self: *GD_PackedFloat32Array) #c_call;
    has: #type (self: *GD_PackedFloat32Array) #c_call;
    reverse: #type (self: *GD_PackedFloat32Array) #c_call;
    slice: #type (self: *GD_PackedFloat32Array) #c_call;
    to_byte_array: #type (self: *GD_PackedFloat32Array) #c_call;
    sort: #type (self: *GD_PackedFloat32Array) #c_call;
    bsearch: #type (self: *GD_PackedFloat32Array) #c_call;
    duplicate: #type (self: *GD_PackedFloat32Array) #c_call;
    find: #type (self: *GD_PackedFloat32Array) #c_call;
    rfind: #type (self: *GD_PackedFloat32Array) #c_call;
    count: #type (self: *GD_PackedFloat32Array) #c_call;
}
packed_float32_array_bindings: GD_PackedFloat32Array_Method_Bindings;

init_bindings_packed_float32_array :: () {
    packed_float32_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT32_ARRAY, 0);
    packed_float32_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT32_ARRAY, 1);
    packed_float32_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT32_ARRAY, 2);
    packed_float32_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_FLOAT32_ARRAY);
}

GD_PackedFloat64Array :: struct {
    opaque: [16] u8;
}

GD_PackedFloat64Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedFloat64Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedFloat64Array, *[1] *GD_PackedFloat64Array) #c_call;
    constructor_2: #type (dest: *GD_PackedFloat64Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedFloat64Array) #c_call;
    size: #type (self: *GD_PackedFloat64Array) #c_call;
    is_empty: #type (self: *GD_PackedFloat64Array) #c_call;
    set: #type (self: *GD_PackedFloat64Array) #c_call;
    push_back: #type (self: *GD_PackedFloat64Array) #c_call;
    append: #type (self: *GD_PackedFloat64Array) #c_call;
    append_array: #type (self: *GD_PackedFloat64Array) #c_call;
    remove_at: #type (self: *GD_PackedFloat64Array) #c_call;
    insert: #type (self: *GD_PackedFloat64Array) #c_call;
    fill: #type (self: *GD_PackedFloat64Array) #c_call;
    resize: #type (self: *GD_PackedFloat64Array) #c_call;
    clear: #type (self: *GD_PackedFloat64Array) #c_call;
    has: #type (self: *GD_PackedFloat64Array) #c_call;
    reverse: #type (self: *GD_PackedFloat64Array) #c_call;
    slice: #type (self: *GD_PackedFloat64Array) #c_call;
    to_byte_array: #type (self: *GD_PackedFloat64Array) #c_call;
    sort: #type (self: *GD_PackedFloat64Array) #c_call;
    bsearch: #type (self: *GD_PackedFloat64Array) #c_call;
    duplicate: #type (self: *GD_PackedFloat64Array) #c_call;
    find: #type (self: *GD_PackedFloat64Array) #c_call;
    rfind: #type (self: *GD_PackedFloat64Array) #c_call;
    count: #type (self: *GD_PackedFloat64Array) #c_call;
}
packed_float64_array_bindings: GD_PackedFloat64Array_Method_Bindings;

init_bindings_packed_float64_array :: () {
    packed_float64_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT64_ARRAY, 0);
    packed_float64_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT64_ARRAY, 1);
    packed_float64_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_FLOAT64_ARRAY, 2);
    packed_float64_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_FLOAT64_ARRAY);
}

GD_PackedStringArray :: struct {
    opaque: [16] u8;
}

GD_PackedStringArray_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedStringArray, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedStringArray, *[1] *GD_PackedStringArray) #c_call;
    constructor_2: #type (dest: *GD_PackedStringArray, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedStringArray) #c_call;
    size: #type (self: *GD_PackedStringArray) #c_call;
    is_empty: #type (self: *GD_PackedStringArray) #c_call;
    set: #type (self: *GD_PackedStringArray) #c_call;
    push_back: #type (self: *GD_PackedStringArray) #c_call;
    append: #type (self: *GD_PackedStringArray) #c_call;
    append_array: #type (self: *GD_PackedStringArray) #c_call;
    remove_at: #type (self: *GD_PackedStringArray) #c_call;
    insert: #type (self: *GD_PackedStringArray) #c_call;
    fill: #type (self: *GD_PackedStringArray) #c_call;
    resize: #type (self: *GD_PackedStringArray) #c_call;
    clear: #type (self: *GD_PackedStringArray) #c_call;
    has: #type (self: *GD_PackedStringArray) #c_call;
    reverse: #type (self: *GD_PackedStringArray) #c_call;
    slice: #type (self: *GD_PackedStringArray) #c_call;
    to_byte_array: #type (self: *GD_PackedStringArray) #c_call;
    sort: #type (self: *GD_PackedStringArray) #c_call;
    bsearch: #type (self: *GD_PackedStringArray) #c_call;
    duplicate: #type (self: *GD_PackedStringArray) #c_call;
    find: #type (self: *GD_PackedStringArray) #c_call;
    rfind: #type (self: *GD_PackedStringArray) #c_call;
    count: #type (self: *GD_PackedStringArray) #c_call;
}
packed_string_array_bindings: GD_PackedStringArray_Method_Bindings;

init_bindings_packed_string_array :: () {
    packed_string_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_STRING_ARRAY, 0);
    packed_string_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_STRING_ARRAY, 1);
    packed_string_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_STRING_ARRAY, 2);
    packed_string_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_STRING_ARRAY);
}

GD_PackedVector2Array :: struct {
    opaque: [16] u8;
}

GD_PackedVector2Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedVector2Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedVector2Array, *[1] *GD_PackedVector2Array) #c_call;
    constructor_2: #type (dest: *GD_PackedVector2Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedVector2Array) #c_call;
    size: #type (self: *GD_PackedVector2Array) #c_call;
    is_empty: #type (self: *GD_PackedVector2Array) #c_call;
    set: #type (self: *GD_PackedVector2Array) #c_call;
    push_back: #type (self: *GD_PackedVector2Array) #c_call;
    append: #type (self: *GD_PackedVector2Array) #c_call;
    append_array: #type (self: *GD_PackedVector2Array) #c_call;
    remove_at: #type (self: *GD_PackedVector2Array) #c_call;
    insert: #type (self: *GD_PackedVector2Array) #c_call;
    fill: #type (self: *GD_PackedVector2Array) #c_call;
    resize: #type (self: *GD_PackedVector2Array) #c_call;
    clear: #type (self: *GD_PackedVector2Array) #c_call;
    has: #type (self: *GD_PackedVector2Array) #c_call;
    reverse: #type (self: *GD_PackedVector2Array) #c_call;
    slice: #type (self: *GD_PackedVector2Array) #c_call;
    to_byte_array: #type (self: *GD_PackedVector2Array) #c_call;
    sort: #type (self: *GD_PackedVector2Array) #c_call;
    bsearch: #type (self: *GD_PackedVector2Array) #c_call;
    duplicate: #type (self: *GD_PackedVector2Array) #c_call;
    find: #type (self: *GD_PackedVector2Array) #c_call;
    rfind: #type (self: *GD_PackedVector2Array) #c_call;
    count: #type (self: *GD_PackedVector2Array) #c_call;
}
packed_vector2_array_bindings: GD_PackedVector2Array_Method_Bindings;

init_bindings_packed_vector2_array :: () {
    packed_vector2_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR2_ARRAY, 0);
    packed_vector2_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR2_ARRAY, 1);
    packed_vector2_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR2_ARRAY, 2);
    packed_vector2_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_VECTOR2_ARRAY);
}

GD_PackedVector3Array :: struct {
    opaque: [16] u8;
}

GD_PackedVector3Array_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedVector3Array, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedVector3Array, *[1] *GD_PackedVector3Array) #c_call;
    constructor_2: #type (dest: *GD_PackedVector3Array, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedVector3Array) #c_call;
    size: #type (self: *GD_PackedVector3Array) #c_call;
    is_empty: #type (self: *GD_PackedVector3Array) #c_call;
    set: #type (self: *GD_PackedVector3Array) #c_call;
    push_back: #type (self: *GD_PackedVector3Array) #c_call;
    append: #type (self: *GD_PackedVector3Array) #c_call;
    append_array: #type (self: *GD_PackedVector3Array) #c_call;
    remove_at: #type (self: *GD_PackedVector3Array) #c_call;
    insert: #type (self: *GD_PackedVector3Array) #c_call;
    fill: #type (self: *GD_PackedVector3Array) #c_call;
    resize: #type (self: *GD_PackedVector3Array) #c_call;
    clear: #type (self: *GD_PackedVector3Array) #c_call;
    has: #type (self: *GD_PackedVector3Array) #c_call;
    reverse: #type (self: *GD_PackedVector3Array) #c_call;
    slice: #type (self: *GD_PackedVector3Array) #c_call;
    to_byte_array: #type (self: *GD_PackedVector3Array) #c_call;
    sort: #type (self: *GD_PackedVector3Array) #c_call;
    bsearch: #type (self: *GD_PackedVector3Array) #c_call;
    duplicate: #type (self: *GD_PackedVector3Array) #c_call;
    find: #type (self: *GD_PackedVector3Array) #c_call;
    rfind: #type (self: *GD_PackedVector3Array) #c_call;
    count: #type (self: *GD_PackedVector3Array) #c_call;
}
packed_vector3_array_bindings: GD_PackedVector3Array_Method_Bindings;

init_bindings_packed_vector3_array :: () {
    packed_vector3_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR3_ARRAY, 0);
    packed_vector3_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR3_ARRAY, 1);
    packed_vector3_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_VECTOR3_ARRAY, 2);
    packed_vector3_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_VECTOR3_ARRAY);
}

GD_PackedColorArray :: struct {
    opaque: [16] u8;
}

GD_PackedColorArray_Method_Bindings :: struct {
    constructor_0: #type (dest: *GD_PackedColorArray, *void) #c_call;
    constructor_1: #type (dest: *GD_PackedColorArray, *[1] *GD_PackedColorArray) #c_call;
    constructor_2: #type (dest: *GD_PackedColorArray, *[1] *GD_Array) #c_call;
    destructor: #type (self: *GD_PackedColorArray) #c_call;
    size: #type (self: *GD_PackedColorArray) #c_call;
    is_empty: #type (self: *GD_PackedColorArray) #c_call;
    set: #type (self: *GD_PackedColorArray) #c_call;
    push_back: #type (self: *GD_PackedColorArray) #c_call;
    append: #type (self: *GD_PackedColorArray) #c_call;
    append_array: #type (self: *GD_PackedColorArray) #c_call;
    remove_at: #type (self: *GD_PackedColorArray) #c_call;
    insert: #type (self: *GD_PackedColorArray) #c_call;
    fill: #type (self: *GD_PackedColorArray) #c_call;
    resize: #type (self: *GD_PackedColorArray) #c_call;
    clear: #type (self: *GD_PackedColorArray) #c_call;
    has: #type (self: *GD_PackedColorArray) #c_call;
    reverse: #type (self: *GD_PackedColorArray) #c_call;
    slice: #type (self: *GD_PackedColorArray) #c_call;
    to_byte_array: #type (self: *GD_PackedColorArray) #c_call;
    sort: #type (self: *GD_PackedColorArray) #c_call;
    bsearch: #type (self: *GD_PackedColorArray) #c_call;
    duplicate: #type (self: *GD_PackedColorArray) #c_call;
    find: #type (self: *GD_PackedColorArray) #c_call;
    rfind: #type (self: *GD_PackedColorArray) #c_call;
    count: #type (self: *GD_PackedColorArray) #c_call;
}
packed_color_array_bindings: GD_PackedColorArray_Method_Bindings;

init_bindings_packed_color_array :: () {
    packed_color_array_bindings.constructor_0 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_COLOR_ARRAY, 0);
    packed_color_array_bindings.constructor_1 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_COLOR_ARRAY, 1);
    packed_color_array_bindings.constructor_2 = xx gdn_interface.variant_get_ptr_constructor(.PACKED_COLOR_ARRAY, 2);
    packed_color_array_bindings.destructor = xx gdn_interface.variant_get_ptr_destructor(.PACKED_COLOR_ARRAY);
}

gdn_init_bindings :: () {
    init_bindings_string();
    init_bindings_vector2();
    init_bindings_vector2i();
    init_bindings_rect2();
    init_bindings_rect2i();
    init_bindings_vector3();
    init_bindings_vector3i();
    init_bindings_transform2d();
    init_bindings_vector4();
    init_bindings_vector4i();
    init_bindings_plane();
    init_bindings_quaternion();
    init_bindings_aabb();
    init_bindings_basis();
    init_bindings_transform3d();
    init_bindings_projection();
    init_bindings_color();
    init_bindings_string_name();
    init_bindings_node_path();
    init_bindings_rid();
    init_bindings_callable();
    init_bindings_signal();
    init_bindings_dictionary();
    init_bindings_array();
    init_bindings_packed_byte_array();
    init_bindings_packed_int32_array();
    init_bindings_packed_int64_array();
    init_bindings_packed_float32_array();
    init_bindings_packed_float64_array();
    init_bindings_packed_string_array();
    init_bindings_packed_vector2_array();
    init_bindings_packed_vector3_array();
    init_bindings_packed_color_array();
}
