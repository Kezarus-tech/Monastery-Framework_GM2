event_inherited();
///DRAW TEXT
draw_set_font_ext(fntStandard, c_yellow, fa_center, fa_middle, 1);

draw_text_outline( x+(width div 2), y + (height div 2), 
    string(round(width)) + " x " + string(round(height)),
    -1, 1000, c_black, 1 );


