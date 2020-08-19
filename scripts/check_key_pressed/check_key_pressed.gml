/// @description check_key_pressed( PlayerActionEnum.[] )
/// @param PlayerActionEnum.[] as enumerator option
// returns a true or false if the player action was just performed by a key command pressed or not.
// Use it instead of the following keyboard_check_pressed or mouse_check_button_pressed or gamepad_button_check_pressed.
// Ex.: if( check_key_pressed( PlayerActionEnum.Shoot ) ){ //do something 
function check_key_pressed(argument0) {
	// check the two maps
	return 
		check_key_pressed_internal(global.key_mapping, argument0) || 
		check_key_pressed_internal(global.key_mapping_alt, argument0);
}