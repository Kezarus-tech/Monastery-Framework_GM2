/// @description RELOAD BUTTONS

//RELOAD BUTTONS INFOS
instance_activate_object(objGUIButton);
var arrCode;
with(objGUIButton){
	if( targetScript == rebind_key_click ){ //LOCATE BUTTON GROUP
		if( targetScriptArgs[1] == false){//IF ALTERNATE OR NOT
			arrCode = global.key_mapping[? targetScriptArgs[0]];
		}else{
			arrCode = global.key_mapping_alt[? targetScriptArgs[0]];
		}
			
		if( !is_undefined(arrCode) ){
			text = key_code_to_string(arrCode[KeyDataEnum.Value]);
		}
	}
}