event_inherited();
///DRAW TEXT
if( text != "" ){
    draw_set_font_ext(fontType, fontColor, fa_left, fa_top, 1);
    
    var textX = x + textOffset;
    var textY = y + textOffset;
    
    for(var i=textIndex; i<array_length(arrText); i++){
        draw_text_outline( textX, textY, arrText[i], -1, width, c_black, 1 );
        textY += fontHeight;
        
        if(textY-y+fontHeight > height-(textOffset*1)){
            break;
        }
    }
    
    
}



