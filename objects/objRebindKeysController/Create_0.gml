#region VARS FOR REBIND

rebindKey = -1; // PlayerActionEnum.[]
rebindAlternate = false;
rebindCode = []; // arr[KeyDataEnum.InputType, KeyDataEnum.Value]

#endregion

// BUTTONS AND GUI VARIABLES
var borderOffset = 10;
var elementWidth = 180;
var elementHeight = 40;
var elementOffset = 5;
var wx, wy;

wx = borderOffset;
wy = borderOffset;

//MAIN MENU BUTTON
gui_create_button(wx, wy, elementWidth, elementHeight, "Main Menu", func_room_goto, roomMainFramework);

//MAIN MENU BUTTON
wy += elementHeight + elementOffset;
gui_create_button(wx, wy, elementWidth, elementHeight, "Restore Default", rebind_keys_restore);

//TEST ROOM BUTTON
wy += elementHeight + elementOffset;
gui_create_button(wx, wy, elementWidth, elementHeight, "Test Room", func_room_goto, roomRebindKeysTest);


//CONTENT PANEL
var content = instance_create(300, 100, objGUIContentPanelObject);

content.width = 600;
content.height = (borderOffset*2)+(5*(elementHeight+elementOffset));
content.heightIncrement = elementHeight+elementOffset;

wx = content.x+borderOffset+elementWidth;
wy = content.y+borderOffset;

var inst = noone;
var arr, enumKey, textValue, inputKeyMapped, inputKeyMappedAlt, mapArrBinding;
var wx_init = wx;


//TOP LABELS
wx += elementOffset;
inst = gui_create_label("Primary", wx+(elementWidth/2), wy-40);
inst.fontAlign = fa_center;
wx += elementOffset + elementWidth;
inst = gui_create_label("Secondary", wx+(elementWidth/2), wy-40);
inst.fontAlign = fa_center;

var list = global.lstControls;
for(var i=0; i<ds_list_size(list); i++){
	wx = wx_init;
	arr = list[| i];
	enumKey = arr[ControlsEnum.PlayerAction];
	textValue = arr[ControlsEnum.Name];
	inputKeyMapped = -1;
	mapArrBinding = ds_map_find_value(global.key_mapping, enumKey);
	if( !is_undefined(mapArrBinding) ){
		inputKeyMapped = mapArrBinding[KeyDataEnum.Value];
	}
	inputKeyMappedAlt = -1;
	mapArrBinding = ds_map_find_value(global.key_mapping_alt, enumKey);
	if( !is_undefined(mapArrBinding) ){
		inputKeyMappedAlt = mapArrBinding[KeyDataEnum.Value];
	}
	

	inst = gui_create_label(textValue, wx, wy+6);
	inst.fontAlign = fa_right;
	ds_list_add(content.lstContent, inst);
	
	wx += elementOffset;
	inst = gui_create_button(wx, wy, elementWidth, elementHeight, key_code_to_string(inputKeyMapped), rebind_key_click, enumKey, false);
	ds_list_add(content.lstContent, inst);
	
	wx += elementOffset + elementWidth;
	inst = gui_create_button(wx, wy, elementWidth, elementHeight, key_code_to_string(inputKeyMappedAlt), rebind_key_click, enumKey, true);
	ds_list_add(content.lstContent, inst);
	
	wy += elementHeight + elementOffset;
}