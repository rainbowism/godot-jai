gd_sin :: (angle_rad: float) -> float #c_call {
    ctx: Context;
    push_context ctx {
        print("%\n", gdn_interface.variant_get_ptr_utility_function);
        func := gdn_interface.variant_get_ptr_utility_function("sin", 2140049587);
        print("%\n", func);
    }
    return angle_rad;
}

#import "Basic";
