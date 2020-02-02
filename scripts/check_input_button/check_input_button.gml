/// @description check_input_button()

// Returns an array of the first input of keyboard(0), mouse(1) or gamepad(2). 
// If no key is pressed returns -1.
// returns:
//	array[KeyDataEnum.InputType] = InputTypeEnum.[]
//	array[KeyDataEnum.Value] = the actual value

var arr;
arr[KeyDataEnum.InputType] = InputTypeEnum.Nothing;
arr[KeyDataEnum.Value] = -1;

if( keyboard_key != 0){
	arr[KeyDataEnum.InputType] = InputTypeEnum.Keyboard;
	arr[KeyDataEnum.Value] = keyboard_key;
}else{
	if( mouse_wheel_up() ){
		arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
		arr[KeyDataEnum.Value] = MB_WHEEL_UP;
	}else if( mouse_wheel_down() ){
		arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
		arr[KeyDataEnum.Value] = MB_WHEEL_DOWN;
	}else if( mouse_check_button(mb_left) ){
		arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
		arr[KeyDataEnum.Value] = mb_left;
	}else if( mouse_check_button(mb_right) ){
		arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
		arr[KeyDataEnum.Value] = mb_right;
	}else if( mouse_check_button(mb_middle) ){
		arr[KeyDataEnum.InputType] = InputTypeEnum.Mouse;
		arr[KeyDataEnum.Value] = mb_middle;
	}else{
		//Number range for controller constants
		var gamepad_num = global.connected_gamepad;
		arr[KeyDataEnum.InputType] = InputTypeEnum.Gamepad;
	  //for (var i=32769;i<=32776;i++) {
		for (var i=32769;i<=32788;i++) {
		    if (gamepad_button_check(gamepad_num,i)) {
		        arr[KeyDataEnum.Value] = i;
		    }
		}
	}
}

return arr;