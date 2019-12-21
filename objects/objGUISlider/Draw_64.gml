event_inherited();
///DRAW VALUE FINAL

if(valueDrawPosition != ""){
    valueFullText = valuePrefixText + string(round(valueFinal)) + valuePosfixText;
}

if(valueDrawPosition == "TOP" ){
    draw_set_font_ext(fontType, fontColor, fa_center, fa_bottom, 1);
    draw_text_outline(
        buttonX + (width div 2), 
        buttonY - 5, 
        valueFullText, -1, 1000, c_black, fontScale);
}else if(valueDrawPosition == "BOTTOM" ){
    draw_set_font_ext(fontType, fontColor, fa_center, fa_top, 1);
    draw_text_outline(
        buttonX + (width div 2), 
        buttonY + height + 5, 
        valueFullText, -1, 1000, c_black, fontScale);
}else if(valueDrawPosition == "LEFT" ){
    draw_set_font_ext(fontType, fontColor, fa_right, fa_middle, 1);
    draw_text_outline(
        buttonX - 5, 
        buttonY + (height div 2),
        valueFullText, -1, 1000, c_black, fontScale);
}else if(valueDrawPosition == "RIGHT" ){
    draw_set_font_ext(fontType, fontColor, fa_left, fa_middle, 1);
    draw_text_outline(
        buttonX + width + 5, 
        buttonY + (height div 2),
        valueFullText, -1, 1000, c_black, fontScale);
}


