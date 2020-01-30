event_inherited();
///SETUP POSITION OFFSET
x = 10;
y = 10;

///CREATE BUTTONS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

width = (offset*2) + btnWidth;
height = (offset*2) + btnHeight + ((btnHeight+btnOffset) * 4);

var wx = x + offset;
var wy = y + offset;
var inst;

inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Pause", call_pause);

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalOK);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalOkCancel);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = instance_create(wx, wy, btnModalManyOptions);
inst.width = btnWidth;
inst.height = btnHeight;

wy += btnHeight + btnOffset;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);


///CREATE OBJECTS
instance_create(x + (width div 2), y + height + 115, objOrbital);

//SETUP
var appWidth = surface_get_width(application_surface);
var appHeight = surface_get_height(application_surface);

var wWidth = 300;
var wx = appWidth-wWidth-10;
var wy = 10;
var inst = instance_create(wx, 10, objGUIContentPanelText);
inst.width = wWidth;
inst.height = wWidth;
inst.text = lang("Big Text");

wy += wWidth + 10;
inst = instance_create(wx, wy, objTweek9Slices);
inst.width = wWidth;
inst.height = appHeight - wWidth - (10 * 3);


///CREATE CONTENT PANEL
var offset = 10;

var borderOffset = 10;
var elementWidth = 180;
var elementHeight = 40;
var elementOffset = 5;

var content = instance_create(x+width+offset, y, objGUIContentPanelObject);

content.width = 700;
content.height = 300;
content.heightIncrement = elementHeight+elementOffset;

var inst;
var text = "";

var wx = content.x + borderOffset;
var wy = content.y + borderOffset;

for (var i=0; i<=30; i++){
	inst = gui_create_label("Label " + string(i), wx, wy+7);
	inst.fontAlign = fa_left;
	ds_list_add(content.lstContent, inst);
	
    text = "Button A" + string(i);
    inst = gui_create_button(wx+100, wy, elementWidth, elementHeight, text, alert, text);
    ds_list_add(content.lstContent, inst);
	
	text = "Button B" + string(i);
    inst = gui_create_button(wx+110+elementWidth, wy, elementWidth, elementHeight, text, alert, text);
    ds_list_add(content.lstContent, inst);
	
	text = "Button C" + string(i);
    inst = gui_create_button(wx+120+(elementWidth*2), wy, elementWidth, elementHeight, text, alert, text);
    ds_list_add(content.lstContent, inst);
	
	wy += elementHeight + elementOffset;
}






