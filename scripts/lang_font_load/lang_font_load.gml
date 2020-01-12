/// @description lang_font_load( font_family )

///@param font_family LATIN, CYRILLIC, JAPANESE, CHINESE

var font;
var path = working_directory + "Framework/Languages/Fonts/";

switch( string_upper(argument0) ){
	case "LATIN":
		font = font_add(path + "OdibeeSans-Regular.ttf", 20, false, false, 32, 127);
		break;
	case "CYRILLIC":
		font = font_add(path + "NotoSans-Regular.ttf", 20, false, false, 32, 127);
		break;
	case "JAPANESE":
		font = font_add(path + "NotoSansJP-Regular.otf", 20, false, false, 32, 127);
		break;
	case "CHINESE":
		font = font_add(path + "NotoSansTC-Regular.otf", 20, false, false, 32, 127);
		break;
}

if( variable_global_exists("language_font") ){
	font_delete(global.language_font);
}

global.language_font = font;

