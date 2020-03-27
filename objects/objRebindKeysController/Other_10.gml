/// @description REBIND
// check the modalAnswer, check rules and rebinds the key

#region DEBUG

alert("REBIND");
alert("rebindKey", rebindKey); //PlayerActionEnum.[]
alert("rebindAlternate", rebindAlternate); //true / false
alert("rebindCode[KeyDataEnum.InputType]", string(rebindCode[KeyDataEnum.InputType])); //what type was clicked
alert("rebindCode[KeyDataEnum.Value]", rebindCode[KeyDataEnum.Value]); //what key was pressed

#endregion

#region REBIND

if( rebindCode[KeyDataEnum.Value] == vk_escape ){
	//CANCEL ON ESC
}else{
	//DECLARE NO KEY IF NEEDED
	var arrNoKey;
	arrNoKey[KeyDataEnum.InputType] = InputTypeEnum.Nothing;
	arrNoKey[KeyDataEnum.Value] = -1;
	
	//CLEAR ON BACKSPACE
	if( rebindCode[KeyDataEnum.Value] == vk_backspace ){
		rebindCode = arrNoKey;
	}
	
	//WHICH MAP TO REBIND?
	var keyMap = global.key_mapping;
	if( rebindAlternate ){
		keyMap = global.key_mapping_alt;
	}

	//CHECK FOR REPEATED KEY IN MAPS
	if( rebindCode[KeyDataEnum.InputType] != InputTypeEnum.Nothing ){
		var arrMaps;
		arrMaps[0] = global.key_mapping;
		arrMaps[1] = global.key_mapping_alt;
		
		var map;
		for( var mapIndex = 0; mapIndex < 2; mapIndex++ ){
			map = arrMaps[mapIndex];
			var size = ds_map_size(map) ;
			var key = ds_map_find_first(map);
			var arrCommand;
			for (var i = 0; i < size; i++;){
				arrCommand = map[? key];
		
				if( arrCommand[KeyDataEnum.InputType] == rebindCode[KeyDataEnum.InputType] && 
					arrCommand[KeyDataEnum.Value] == rebindCode[KeyDataEnum.Value] 
				){
					ds_map_set(map, key, arrNoKey);
				}
		
				key = ds_map_find_next(map, key);
			}
		}
	}
	
	//ACTUAL REBIND
	ds_map_set(keyMap, rebindKey, rebindCode);
	
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

	
}


#endregion
