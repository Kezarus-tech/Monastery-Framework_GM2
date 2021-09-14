//THIS FUNCTION IS DEPRECATED AND SHOULD NOT BE USED

/// @description draw_nineslice_tiled( sprite, x1, y1, x2, y2, color, alpha, [random] )
/// @param sprite
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param color
/// @param alpha
/// @param random

function draw_nineslice_tiled() {

	var sprite = argument[0];
	var x1 = argument[1];
	var y1 = argument[2];
	var x2 = argument[3];
	var y2 = argument[4];
	var color = argument[5];
	var alpha = argument[6];
	var wRandom = -1;
	if( argument_count > 7 ){
	    wRandom = argument[7];
	    if(wRandom != -1){
	        random_set_seed(wRandom);
	    }
	}

	//Safe guard
	if( sprite == -1 ){
	    return 0;
	}


	var wSprNumber = sprite_get_number(sprite)-1;

	var slice_width = sprite_get_width(sprite)/3;
	var slice_height = sprite_get_height(sprite)/3;

	if( sprite_get_width(sprite)%3 != 0 || sprite_get_height(sprite)%3 != 0 ){
	    show_debug_message("WARNING: Sprite is not a multiple of 3.");
	}


	// Middle ----------------------------------------------------------------------------------------------------------------
	var xx, yy;
	for(xx=x1+slice_width; xx<x2-slice_width; xx+=slice_width){
	    for(var yy=y1+slice_height; yy<y2-slice_height; yy+=slice_height){
	        draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width, slice_height, min(slice_width, x2-xx-slice_width), min(slice_height, y2-yy-slice_height), xx, yy, 1, 1, color, alpha); //Middle
	    }
	}

	for(var yy=y1+slice_height; yy<y2-slice_height; yy+=slice_height){
	    draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), 0,              slice_height, slice_width, min(slice_height, y2-yy-slice_height), x1,             yy, 1, 1, color, alpha); //Left
	    draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width*2,  slice_height, slice_width, min(slice_height, y2-yy-slice_height), x2-slice_width, yy, 1, 1, color, alpha); //Right
	}

	// Top & Bottom ----------------------------------------------------------------------------------------------------------

	xx = x1;
	draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), 0, 0,               slice_width, slice_height,   xx, y1,              1, 1, color, alpha); //Top Left
	draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), 0, slice_height*2,  slice_width, slice_height*2, xx, y2-slice_height, 1, 1, color, alpha); //Bottom Left
	for(xx=x1+slice_width; xx<x2-slice_width; xx+=slice_width){
	    draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width, 0,              min(slice_width, x2-xx-slice_width), slice_height, xx, y1,              1, 1, color, alpha); //Top Middle
	    draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width, slice_height*2, min(slice_width, x2-xx-slice_width), slice_height, xx, y2-slice_height, 1, 1, color, alpha); //Bottom Middle
	}
	draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width*2, 0,              slice_width, slice_height, x2-slice_width, y1,              1, 1, color, alpha); //Top Right
	draw_sprite_part_ext(sprite, choose(0, 0, irandom(wSprNumber)), slice_width*2, slice_height*2, slice_width, slice_height, x2-slice_width, y2-slice_height, 1, 1, color, alpha); //Bottom Right


	if(wRandom != -1){
	    randomize();
	}
}
