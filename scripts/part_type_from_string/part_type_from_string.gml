/// @description part_type_from_string( string )
function part_type_from_string(argument0) {

	/// @param string

	var result;
	switch(argument0){
		case "pt_shape_pixel":		result = pt_shape_pixel; break;
		case "pt_shape_disk":		result = pt_shape_disk; break;
		case "pt_shape_square":		result = pt_shape_square; break;
		case "pt_shape_line":		result = pt_shape_line; break;
		case "pt_shape_star":		result = pt_shape_star; break;
		case "pt_shape_circle":		result = pt_shape_circle; break;
		case "pt_shape_ring":		result = pt_shape_ring; break;
		case "pt_shape_sphere":		result = pt_shape_sphere; break;
		case "pt_shape_flare":		result = pt_shape_flare; break;
		case "pt_shape_spark":		result = pt_shape_spark; break;
		case "pt_shape_explosion":	result = pt_shape_explosion; break;
		case "pt_shape_cloud":		result = pt_shape_cloud; break;
		case "pt_shape_smoke":		result = pt_shape_smoke; break;
		case "pt_shape_snow":		result = pt_shape_snow; break;
	
		default: result = "pt_shape_pixel"; break;
	}

	return result;



}
