/// @description lang_font_load( font_family )
///@param font_family LATIN, CYRILLIC, JAPANESE, CHINESE
function lang_font_load(argument0) {
	var font, fontSmall, fontLarge;
	var fontName = string_lower("Audiowide-Regular.ttf");
	var path = working_directory + string_lower("Framework/Languages/Fonts/");
	var fontSize = 14;
	var fontSizeSmall = 10;

	switch( string_upper(argument0) ){
		case "LATIN":
			fontName = string_lower("OdibeeSans-Regular.ttf");
			fontSize = 20;
			fontSizeSmall = 14;
			break;
		case "CYRILLIC":
			fontName = string_lower("NotoSans-Bold.ttf");
			break;
		case "JAPANESE":
			fontName = string_lower("NotoSansJP-Bold.otf");
			break;
		case "CHINESE":
			fontName = string_lower("NotoSansTC-Bold.otf");
			break;
	}

	font = font_add(path + fontName, fontSize, false, false, 32, 127);
	fontSmall = font_add(path + fontName, fontSizeSmall, false, false, 32, 127);
	fontLarge = font_add(path + fontName, fontSize*2, false, false, 32, 127);

	if( variable_global_exists("language_font") ){
		if ( font_exists(global.language_font) ){
			font_delete(global.language_font);
		}
	}
	if( variable_global_exists("language_font_small") ){
		if ( font_exists(global.language_font_small) ){
			font_delete(global.language_font_small);
		}
	}
	if( variable_global_exists("language_font_large") ){
		if ( font_exists(global.language_font_large) ){
			font_delete(global.language_font_large);
		}
	}

	global.language_font = font;
	global.language_font_small = fontSmall;
	global.language_font_large = fontLarge;
}
