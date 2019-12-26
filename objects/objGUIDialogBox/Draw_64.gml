event_inherited();

#region DRAW TEXT
if( text != "" ){
    draw_set_font_ext(fontType, fontColor, fa_left, fa_top, 1);
    
    var textX = buttonX + textOffset;
    var textY = buttonY + textOffset;
    
    draw_text_outline( textX, textY, textToDisplay, -1, width-(textOffset*2), c_black, fontScale );
}

#endregion

#region DRAW ARROW
if( waitForAnykey ){
    var arrow = sprGUIArrow;
    draw_sprite_ext(arrow, 0, 
        buttonLeft + (width div 2), 
        buttonBottom - sprite_get_height(arrow),
        1, 1, 0, c_white, 
        wave(0, 1, 1, 0)
    );
}
#endregion
