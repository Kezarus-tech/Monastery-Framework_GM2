event_inherited();
///DRAW TEXT
if( text != "" ){
    draw_set_font_ext(fontType, fontColor, fa_left, fa_top, 1);
    
    draw_text_outline( 
        buttonX+fontOffset, 
        buttonY+fontOffset, 
        text, -1, width-(fontOffset*2), c_black );

}



