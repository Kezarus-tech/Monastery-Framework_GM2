/// @description check_key( PlayerActionEnum.[] )
/// @param PlayerActionEnum.[] as enumerator option
// returns a true or false if the player action is being performed by a key command or not. 
// Use it instead of the following keyboard_check or mouse_check_button or gamepad_button_check.
// Ex.: if( check_key( PlayerActionEnum.Shoot ) ){ //do something }
function check_key(argument0) {
	// check the two maps
	return 
		check_key_internal(global.key_mapping, argument0) || 
		check_key_internal(global.key_mapping_alt, argument0);
}