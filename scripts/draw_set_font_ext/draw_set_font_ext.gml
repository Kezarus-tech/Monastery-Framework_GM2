/// @description draw_set_font_ext( font, [colour], [halign], [valign], [alpha] )
/// @param font
/// @param colour
/// @param halign fa_left / fa_center / fa_right
/// @param valign fa_top / fa_middle / fa_bottom
/// @param alpha
function draw_set_font_ext() {
	var wFont = argument[0];
	var wColour = c_white;
	if(argument_count>1){ wColour = argument[1] }
	var wHalign = fa_left;
	if(argument_count>2){ wHalign = argument[2] }
	var wValign = fa_top;
	if(argument_count>3){ wValign = argument[3] }
	var wAlpha = 1;
	if(argument_count>4){ wAlpha = argument[4] }

	draw_set_font(wFont);
	draw_set_colour(wColour);
	draw_set_alpha(wAlpha);
	draw_set_halign(wHalign);
	draw_set_valign(wValign);
}
