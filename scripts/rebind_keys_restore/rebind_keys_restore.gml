/// @description rebind_keys_restore()

// Restore the default commands defined at rebind_keys_initialize
function rebind_keys_restore() {
	ini_open("CONFIG.INI");

	//CLEAR ALL CONTROLS FROM INI
	ini_section_delete("controls");
	ini_section_delete("controls_alt");

	ini_close();

	rebind_keys_load();

	//RELOAD BUTTONS IF AT REBIND SCREEN
	with(objRebindKeysController){
		event_perform(ev_other, ev_user1);
	}
}