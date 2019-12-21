/// @description DRAW SELF & ICON

draw_sprite_ext(sprite_index, 0, buttonX, buttonY, 1, 1, 0, image_blend, image_alpha);

if( buttonPressed ){
    draw_sprite(icon, 0, 
        buttonX + (sprite_width div 2) - (sprite_get_width(icon) div 2), 
        buttonY + (sprite_height div 2) - (sprite_get_height(icon) div 2));
}




///DRAW TEXT
if( text != "" ){
    draw_set_font_ext(fontType, fontColor, fa_left, fa_middle, 1);

    draw_text_outline( 
        buttonX + sprite_width + textOffset, 
        buttonY + (sprite_height div 2), text, -1, 1000, c_black, fontScale );
}



