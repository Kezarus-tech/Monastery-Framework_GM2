///LISTENS TO GAMEPAD
if( ds_exists(async_load, ds_type_map) ){
	var wEventType = ds_map_find_value(async_load, "event_type");
	
	if(wEventType == "gamepad discovered"){
		var wPadIndex = ds_map_find_value(async_load, "pad_index");
		alert("Gamepad discovered", wPadIndex);
		
		if( wPadIndex != -1 ){
			gamepad_set_axis_deadzone(wPadIndex, 0.15);
			gamepad_set_button_threshold(wPadIndex, 0.5);
		}

		global.connected_gamepad = wPadIndex;
		
	}else if(wEventType == "gamepad lost"){
		var wPadIndex = ds_map_find_value(async_load, "pad_index");
		alert("Gamepad lost", wPadIndex);
		
		global.connected_gamepad = -1;
	}
}

