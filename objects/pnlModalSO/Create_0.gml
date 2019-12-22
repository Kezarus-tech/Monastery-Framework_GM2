event_inherited();
///SETUP POSITION
x = 10;
y = 10;

///CREATE BUTTONS & SLIDERS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + (btnHeight*2) + (btnOffset*1);

var wx = x + offset;
var wy = y + offset;

gui_create_button(wx, wy, btnWidth, btnHeight, "Demo Modals", instance_create, 0, 0, objModalSO );

wy += btnHeight + (btnOffset*2);
gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);

