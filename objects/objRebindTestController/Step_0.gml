code = check_input_button();

//DETECT INPUT PRESS
text1 = key_code_to_string(code[KeyDataEnum.Value]) + " (" + string(code[KeyDataEnum.Value]) + ")";

var list = global.lstControls;
for(var i=0; i<ds_list_size(list); i++){
	arr = list[| i];
	enumKey = arr[ControlsEnum.PlayerAction];
	enumValue = arr[ControlsEnum.Name];
	
	text1 += "\n"+enumValue+": " + string(check_key(enumKey));
	
	if( check_key_pressed(enumKey) ){
		text2 += "\n"+enumValue;
		alarm[0] = 10;
	}

	if( check_key_released(enumKey) ){
		text3 += "\n"+enumValue;
		alarm[1] = 10;
	}
}






	
