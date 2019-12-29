/// @description part_index_to_type( index )

/// @param index

var result;
switch(argument0){
	case 0: result = pt_shape_pixel; break;
	case 1: result = pt_shape_disk; break;
	case 2: result = pt_shape_square; break;
	case 3: result = pt_shape_line; break;
	case 4: result = pt_shape_star; break;
	case 5: result = pt_shape_circle; break;
	case 6: result = pt_shape_ring; break;
	case 7: result = pt_shape_sphere; break;
	case 8: result = pt_shape_flare; break;
	case 9: result = pt_shape_spark; break;
	case 10: result = pt_shape_explosion; break;
	case 11: result = pt_shape_cloud; break;
	case 12: result = pt_shape_smoke; break;
	case 13: result = pt_shape_snow; break;
	
	default: result = pt_shape_pixel; break;
}

return result;
