event_inherited();
///SETUP & CREATE BUTTONS
var elementWidth = 130;
var elementHeight = 35;
var elementOffset = 5;
var offset = 20;

width =  (offset*2) + (elementWidth*2);
height = (offset*2) + (elementOffset*1) + (elementHeight*3);

var wx = x + offset;
var wy = y + offset;
var inst;

inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 1";

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 2";

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 3";

wx = x + offset + elementWidth;
wy = y + offset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 4";

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 5";

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Group 6";

wx = x;
wy = y + height + offset;
inst = instance_create(wx, wy, objGUIInputText);
inst.text = "Type text here"
inst.width = width;



