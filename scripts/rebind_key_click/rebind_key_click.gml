/// @description rebind_key_click( PlayerActionEnum.[], Alternative* )

/// @param PlayerActionEnum.[] : an enum option
/// @param Alternative* : an enum option

// Calls a pause and wait for a key press

with(objRebindKeysController){
	// Variables set on objRebindKeysController
	rebindKey = argument[0];
	rebindAlternate = false;
	if( argument_count > 1 ){
		rebindAlternate = argument[1];
	}
	
	var inst = instance_create(0, 0, objPause);
	inst.suppress = true;
	inst.showText = true;
	inst.text = "Press any key or Esc to cancel";


	
	//Keep objRebindKeysController active
	instance_activate_object(self);
}



