/// @description SHAKE IT!
var dir = irandom(360);
var amountNow = amount * (alarm[1]/durationMax);

camera_set_view_pos(
	view_get_camera(0),
	originalX + lengthdir_x(amountNow, dir),
	originalY + lengthdir_y(amountNow, dir)
);

alarm[0] = frequency;


