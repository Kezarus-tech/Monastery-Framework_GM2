event_inherited();

#region CREATE OBJECTS

//SETUP
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + btnHeight + ((btnHeight+btnOffset) * 3.5);
x = (surface_get_width(application_surface) div 2)-(width div 2);
y = 50;

var wx = x + offset;
var wy = y + offset;
var inst;

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, sldMusic);
inst.width = btnWidth;
inst.height = btnHeight div 4;

wy += (btnHeight + btnOffset)*1.5;
inst = instance_create(wx, wy, sldSound);
inst.width = btnWidth;
inst.height = btnHeight div 4;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);
#endregion

#region LOAD INI
fileName = "CONFIG.INI";
var value;

ini_open(fileName);

value = ini_read_real("prefs", "music", 100);
sldMusic.valueUpdate = value;

value = ini_read_real("prefs", "sound", 100);
sldSound.valueUpdate = value;

ini_close();
#endregion