/// @description check_key_released( PlayerActionEnum.[] )
/// @param PlayerActionEnum.[] as enumerator option

// returns a true or false if the player action was just performed by a key command released or not. 
// Use it instead of the following keyboard_check_released or mouse_check_button_released or gamepad_button_check_released.
// Ex.: if( check_key_released( PlayerActionEnum.Shoot ) ){ //do something }
function check_key_released(argument0) {
	// check the two maps
	return 
		check_key_released_internal(global.key_mapping, argument0) || 
		check_key_released_internal(global.key_mapping_alt, argument0);
}