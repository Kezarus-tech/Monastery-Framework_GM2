/// @description check_key_internal( key_map, PlayerActionEnum.[] )
/// @param key_map the map to check
/// @param PlayerActionEnum.[] as enumerator option
function check_key_internal(argument0, argument1) {
	var key_map = argument0;
	var arr = key_map[? argument1];

	if( is_undefined(arr) ){
		return false;
	}else if( arr[KeyDataEnum.InputType] == InputTypeEnum.Nothing ){
		return false;
	}else if( arr[KeyDataEnum.InputType] == InputTypeEnum.Keyboard ){
		return keyboard_check(arr[KeyDataEnum.Value]);
	}else if( arr[KeyDataEnum.InputType] == InputTypeEnum.Mouse ){
		switch(arr[KeyDataEnum.Value]){
		case MB_WHEEL_UP:
			return mouse_wheel_up();
		break;
		case MB_WHEEL_DOWN:
			return mouse_wheel_down();
		break;
		default:
			return mouse_check_button(arr[KeyDataEnum.Value]);
		}
	}else if( arr[KeyDataEnum.InputType] == InputTypeEnum.Gamepad ){
		return gamepad_button_check(global.connected_gamepad, arr[KeyDataEnum.Value]);
	}

	return false;
}