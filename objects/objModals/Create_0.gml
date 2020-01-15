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
var elementWidth = 65;
var elementHeight = 40;
var elementOffset = 5;
var scrollWidth = 15;

var content = instance_create(x+width+offset, y, objGUIContentPanelObject);
content.borderOffset = borderOffset;
content.elementOffset = elementOffset;
content.scrollWidth = scrollWidth;
content.elementWidth = elementWidth;
content.elementHeight = elementHeight;

content.width = (borderOffset*2)+scrollWidth+(5*(elementWidth+elementOffset))-elementOffset;
content.height = (borderOffset*2)+(11*(elementHeight+elementOffset))-elementOffset;

var btn;
var text = "";
for (var i=0; i<100; i++){
    text = "B" + string(i);
    btn = gui_create_button(-100, -100, elementWidth, elementHeight, text, alert, text);
    
    ds_list_add(content.lstContent, btn);
}






