
code = check_input_button();

//DETECT INPUT PRESS
text = key_code_to_string(code[KeyDataEnum.Value]) + " (" + string(code[KeyDataEnum.Value]) + ")";


var list = global.lstControls;
for(var i=0; i<ds_list_size(list); i++){
	arr = list[| i];
	enumKey = arr[0];
	enumValue = arr[1];
	
	text += "\n"+enumValue+": " + string(check_key(enumKey));
}
	
