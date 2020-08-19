///@description lang_btn_click( archive )
// this function is on a button click event to change the game language
function lang_btn_click(argument0) {
	if( lang_load( argument0 ) ){
		ini_open("CONFIG.INI");
		ini_write_string("prefs", "language", argument0);
		ini_close();

		room_restart();
	}
}
