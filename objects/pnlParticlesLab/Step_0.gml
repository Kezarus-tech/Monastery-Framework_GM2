// Inherit the parent event
event_inherited();

if( keyboard_check_released(vk_tab) ){
	var selectedInput = noone;
	
	with(objGUIInputText){
		if(onFocus){
			selectedInput = id;
		}
	}
	
	if(selectedInput == noone){
		indexTabs = -1;
	}else{
		indexTabs = ds_list_find_index(lstTabs, selectedInput);
	}
	
	if( !keyboard_check(vk_shift) ){
		indexTabs += 1;
		
		if(indexTabs >= ds_list_size(lstTabs)){
			indexTabs = 0;
		}
	}else{
		indexTabs -= 1;
		
		if(indexTabs < 0){
			indexTabs = ds_list_size(lstTabs)-1;
		}
	}
	
	
	
	selectedInput = ds_list_find_value(lstTabs, indexTabs);
	
	with(objGUIInputText){
		onFocus = false;
		
		if(selectedInput == id){
			onFocus = true;
			cursorPosition = string_length(text)+1;
			cursorSelectPosition = 1;
		}
	}
}
