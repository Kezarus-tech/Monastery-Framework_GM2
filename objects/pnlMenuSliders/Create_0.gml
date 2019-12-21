event_inherited();
///SETUP & CREATE BUTTONS
var elementWidth = 100;
var elementHeight = 35;
var elementOffset = 5;
var offset = 20;

width =  (offset*2) + (elementWidth*2);
height = pnlMenuButtons.height;

var wx = x + offset;
var wy = y + offset;
var inst;

gui_create_slider(wx, wy, elementWidth*2, 10);

wy += elementHeight + elementOffset;
inst = gui_create_slider(x + width - offset - (elementWidth*1.5), wy, elementWidth * 1.5, 20, 20, 16);
inst.valueDrawPosition = "LEFT";
inst.valuePosfixText = "%";
inst.valueUpdatePercentual = 25;
                       
wy += elementHeight + elementOffset;
inst = gui_create_slider(wx, wy, elementWidth * 1.5, 6, 10, 20);
inst.valueDrawPosition = "RIGHT";
inst.valueUpdatePercentual = 50;

wy += (elementHeight + elementOffset) * 1.5;
inst = gui_create_slider(wx, wy, elementWidth * 1, 10);
inst.valueDrawPosition = "TOP";
inst.valuePrefixText = "Value: ";
inst.valueUpdatePercentual = 75;

inst = gui_create_slider(wx + elementWidth + elementOffset, wy-30, elementWidth, 10);
inst.valueDrawPosition = "BOTTOM";
inst.valueUpdatePercentual = 100;

wy += elementHeight + elementOffset;
inst = gui_create_slider(wx, wy, 10, elementWidth * 1.8, 24, 10, 0, 10);
inst.valueDrawPosition = "RIGHT";

wx += 60;
inst = gui_create_slider(wx, wy + (elementWidth * 0.3), 10, elementWidth * 1.5, 24, 10, 0, 1000);
inst.valueDrawPosition = "TOP";
inst.valueUpdatePercentual = 33;

wx += 60;
inst = gui_create_slider(wx, wy, 10, elementWidth * 1.5, 24, 10, 100, 900, 660);
inst.valueDrawPosition = "BOTTOM";


wx += 60;
inst = gui_create_slider(wx, wy, 20, elementWidth * 1.8, 16, 20);
inst.valueDrawPosition = "LEFT";
inst.valueUpdatePercentual = 100;













