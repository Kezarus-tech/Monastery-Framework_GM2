/// @description check_key_pressed( PlayerActionEnum.[] )

/// @param PlayerActionEnum.[] as enumerator option

// check the two maps
return 
	check_key_pressed_internal(global.key_mapping, argument0) || 
	check_key_pressed_internal(global.key_mapping_alt, argument0);
