/// @description DRAW CREDITS

// Inherit the parent event
event_inherited();

draw_set_font_ext(fntStandard, c_white, fa_left, fa_top, 1);
draw_text_outline(creditsX, creditsY, credits, -1, 1000, c_black, 1);