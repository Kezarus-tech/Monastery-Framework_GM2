/// @description check_key_released( PlayerActionEnum.[] )

/// @param PlayerActionEnum.[] as enumerator option

// check the two maps
return 
	check_key_released_internal(global.key_mapping, argument0) || 
	check_key_released_internal(global.key_mapping_alt, argument0);
