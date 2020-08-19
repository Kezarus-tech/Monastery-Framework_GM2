/// @description draw_nineslice_streched( sprite, x1, y1, x2, y2, color )
/// @param sprite
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param color
function draw_nineslice_streched(argument0, argument1, argument2, argument3, argument4, argument5) {

	/// CREDIT TO: HeartBeast, https://www.youtube.com/watch?v=GkH5CIamSyA
	var sprite = argument0;
	var x1 = argument1;
	var y1 = argument2;
	var x2 = argument3;
	var y2 = argument4;
	var color = argument5;

	var slice_width = sprite_get_width(sprite)/3;
	var slice_height = sprite_get_height(sprite)/3;

	if( sprite_get_width(sprite)%3 != 0 || sprite_get_height(sprite)%3 != 0 ){
	    show_debug_message("WARNING: Sprite is not a multiple of 3.");
	}

	var width = abs(x2-x1);
	var height = abs(y2-y1);

	// Top
	draw_sprite_part_ext(sprite, 0, 0, 0, slice_width, slice_height, x1, y1, 1, 1, color, 1); //Left
	draw_sprite_part_ext(sprite, 0, slice_width, 0, slice_width, slice_height, x1+slice_width, y1, (width-slice_width*2)/slice_width, 1, color, 1); //Middle
	draw_sprite_part_ext(sprite, 0, slice_width*2, 0, slice_width, slice_height, x2-slice_width, y1, 1, 1, color, 1); //Right

	// Middle
	draw_sprite_part_ext(sprite, 0, 0, slice_height, slice_width, slice_height, x1, y1+slice_height, 1, (height-slice_height*2)/slice_height, color, 1); //Left
	draw_sprite_part_ext(sprite, 0, slice_width, slice_height, slice_width, slice_height, x1+slice_width, y1+slice_height, (width-slice_width*2)/slice_width, (height-slice_height*2)/slice_height, color, 1); //Middle
	draw_sprite_part_ext(sprite, 0, slice_width*2, slice_height, slice_width, slice_height, x2-slice_width, y1+slice_height, 1, (height-slice_height*2)/slice_height, color, 1); //Right

	// Bottom
	draw_sprite_part_ext(sprite, 0, 0, slice_height*2, slice_width, slice_height*2, x1, y2-slice_height, 1, 1, color, 1); //Left
	draw_sprite_part_ext(sprite, 0, slice_width, slice_height*2, slice_width, slice_height, x1+slice_width, y2-slice_height, (width-slice_width*2)/slice_width, 1, color, 1); //Middle
	draw_sprite_part_ext(sprite, 0, slice_width*2, slice_height*2, slice_width, slice_height, x2-slice_width, y2-slice_height, 1, 1, color, 1); //Right

}
