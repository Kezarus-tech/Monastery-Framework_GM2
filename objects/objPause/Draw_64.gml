/// @description DRAW PAUSE
draw_sprite_ext(pauseScreenShot, 0, 0, 0, image_xscale, image_yscale, 0, c_gray, 1);

///DRAW TEXT
if( !suppress || showText ){
    draw_set_font_ext(fntStandard, c_yellow, fa_center, fa_middle);
    draw_text_outline(appWidth*0.5, appHeight*0.3, text);
}




