event_inherited();

///CREATE BUTTONS & PANEL
var ww = surface_get_width(application_surface);
var hh = surface_get_height(application_surface);

var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + btnHeight + ((btnHeight+btnOffset) * 5);

x = (ww div 2) //middle of the screen
    -(width div 2);
y = (hh div 3) //a third of the screen
    -(height div 2);

var wx = x + offset;
var wy = y + offset;

instance_create(0,0,objMonasteryIcon);
instance_create(0,0,objCredits);

gui_create_button(wx, wy, btnWidth, btnHeight, "GUI Elements", func_room_goto, roomButtons);

wy += btnHeight + btnOffset;
gui_create_button(wx, wy, btnWidth, btnHeight, "Modals", func_room_goto, roomModals);

wy += btnHeight + btnOffset;
gui_create_button(wx, wy, btnWidth, btnHeight, "Easy GUI", func_room_goto, roomEasyGUI);

wy += btnHeight + btnOffset;
gui_create_button(wx, wy, btnWidth, btnHeight, "Options", func_room_goto, roomOptions);

wy += btnHeight + btnOffset;
gui_create_button(wx, wy, btnWidth, btnHeight, "Shake", func_room_goto, roomShake);

wy += btnHeight + btnOffset;
gui_create_button(wx, wy, btnWidth, btnHeight, "Quit", func_game_end);



