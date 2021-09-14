event_inherited();
///SETUP & CREATE BUTTONS & OTHER PANEL
var elementWidth = 130;
var elementHeight = 35;
var elementOffset = 5;
var offset = 20;

width =  (offset*2) + (elementWidth*2);
height = (offset*2) + (elementOffset*1) + (elementHeight*3);

var wx = x + offset;
var wy = y + offset;
var inst;

inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 1"

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 2"

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 3"


wx = x + offset + elementWidth;
wy = y + offset;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 4"

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 5"

wy += elementHeight + elementOffset;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Option 6"


///CREATE OTHER PANEL
inst = instance_create(x, y+height+10, pnlMenuRadiobutton);

///CREATE ANOTHER PANEL
inst = instance_create(x+width+10, y, pnlMenuSliders);



