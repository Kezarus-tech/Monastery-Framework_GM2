/// @description lang_initialize( )
// load the ini into a global variable
function lang_initialize() {

	#region LOAD INI
		ini_open("CONFIG.INI");
		global.language = ini_read_string("prefs", "language", "English");
		ini_close();
	#endregion

	#region LOAD LANGUAGE DICTIONARY
		lang_load(global.language);
	#endregion
	
}
