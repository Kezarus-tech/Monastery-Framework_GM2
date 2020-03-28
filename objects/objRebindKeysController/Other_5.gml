/// @description SAVE INI

ini_open("CONFIG.INI");

//CLEAR ALL CONTROLS
ini_section_delete("controls");
ini_section_delete("controls_alt");


var arr, enumKey, textValue, mapArrBinding;

var list = global.lstControls;
for( var i=ds_list_size(list)-1; i>=0; i-- ){
	arr = list[| i];
	enumKey = arr[ControlsEnum.PlayerAction];
	textValue = arr[ControlsEnum.Name];
	
	mapArrBinding = ds_map_find_value(global.key_mapping, enumKey);
	if( !is_undefined(mapArrBinding) ){
		ini_write_real("controls", textValue+"_Value", mapArrBinding[KeyDataEnum.Value]);
		ini_write_real("controls", textValue+"_InputType", mapArrBinding[KeyDataEnum.InputType]);
	}
	
	mapArrBinding = ds_map_find_value(global.key_mapping_alt, enumKey);
	if( !is_undefined(mapArrBinding) ){
		ini_write_real("controls_alt", textValue+"_Value", mapArrBinding[KeyDataEnum.Value]);
		ini_write_real("controls_alt", textValue+"_InputType", mapArrBinding[KeyDataEnum.InputType]);
	}
	
}

ini_close();