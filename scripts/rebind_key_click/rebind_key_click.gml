/// @description rebind_key_click( PlayerActionEnum.[], Alternative* )
/// @param PlayerActionEnum.[] : an enum option
/// @param Alternative* : an enum option

// Calls a pause and wait for a key press
function rebind_key_click() {
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
		inst.text = "Press any key, Esc to cancel, Backspace to clear";

		//Keep objRebindKeysController active
		instance_activate_object(self);
	}
}