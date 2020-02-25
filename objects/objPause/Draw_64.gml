/// @description DRAW PAUSE
myColor = merge_color(myColor, c_dkgray, 0.05);
myScale = lerp(myScale, 1.025, 0.1);
wx = -(((appWidth*myScale) - appWidth) div 2);
wy = -(((appHeight*myScale) - appHeight) div 2);
draw_sprite_ext(pauseScreenShot, 0, wx, wy, myScale, myScale, 0, myColor, 1);

///DRAW TEXT
if( !suppress || showText ){
    draw_set_font_ext(fntStandard, c_yellow, fa_center, fa_middle);
    draw_text_outline(appWidth*0.5, appHeight*0.3, text);
}




