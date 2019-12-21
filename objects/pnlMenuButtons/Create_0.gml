event_inherited();
///SETUP & CREATE BUTTONS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + btnHeight + ((btnHeight+btnOffset) * 7);

var wx = x + offset;
var wy = y + offset;
var inst;

gui_create_button(wx, wy, btnWidth, btnHeight, "Standard", alert, "Standard clicked");

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Disabled", alert, "Disabled clicked");
inst.enabled = false;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Stay Pressed", alert, "Stay Pressed clicked");
inst.stayPressed = true;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Toggled 1", alert, "Toggled 1 clicked");
inst.toggled = true;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Toggled 2", alert, "Toggled 2 clicked");
inst.toggled = true;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Toggled 3", alert, "Toggled 3 clicked");
inst.toggled = true;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Clear", clear_all_buttons);

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);




