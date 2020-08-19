/// @description draw_text_outline( x, y, text, separation*, width*, outline_color*, scale*, angle*, alpha* );
/// @param x
/// @param y
/// @param text - the text that will be writen
/// @param separation* - The distance in pixels between lines of text as if the string was being drawn.
/// @param width* - The maximum width (in pixels) of the string before a line break as if the string was bring drawn.
/// @param outline_color*
/// @param scale*
/// @param angle*
/// @param alpha*
function draw_text_outline() {
	var x1 = argument[0],
	    y1 = argument[1],
	    text = argument[2],
	    wSep = -1,
	    wWidth = -1,
	    wScale = 1,
	    wAngle = 0,
	    wAlpha = 1,
	    c1 = c_black;
	var c2 = draw_get_colour();
	
	if (argument_count > 3){ wSep   = argument[3]; }
	if (argument_count > 4){ wWidth = argument[4]; }
	if (argument_count > 5){ c1     = argument[5]; }
	if (argument_count > 6){ wScale = argument[6]; }
	if (argument_count > 7){ wAngle = argument[7]; }
	if (argument_count > 8){ wAlpha = argument[8]; }

	draw_set_alpha(wAlpha);
	draw_set_color(c1);

	draw_text_ext_transformed(x1+1, y1+0, string_hash_to_newline(text), wSep, wWidth, wScale, wScale, wAngle);
	draw_text_ext_transformed(x1-1, y1+0, string_hash_to_newline(text), wSep, wWidth, wScale, wScale, wAngle);
	draw_text_ext_transformed(x1+0, y1+1, string_hash_to_newline(text), wSep, wWidth, wScale, wScale, wAngle);
	draw_text_ext_transformed(x1+0, y1-1, string_hash_to_newline(text), wSep, wWidth, wScale, wScale, wAngle);

	draw_set_color(c2);

	draw_text_ext_transformed(x1, y1, string_hash_to_newline(text), wSep, wWidth, wScale, wScale, wAngle);

	draw_set_alpha(1);
}
