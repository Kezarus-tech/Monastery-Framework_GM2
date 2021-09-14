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
height = (offset*2) + btnHeight + (btnHeight+(btnOffset*2)) + 
    ((btnHeight + (btnOffset*4))*3);

var wx = x + offset;
var wy = y + offset;
var inst, wBtnShake;

wBtnShake = instance_create(wx, wy, btnShake);
wBtnShake.width = btnWidth;
wBtnShake.height = btnHeight;

wy += btnHeight + (btnOffset*4);
inst = instance_create(wx, wy, objGUISlider);
inst.width = btnWidth;
inst.height = 10;
inst.valueUpdate = 5;
inst.valueMin = 1;
inst.valueMax = 100;
inst.valueDrawPosition = "BOTTOM"
inst.valuePrefixText = "Amount ";
inst.valuePosfixText = " px";
wBtnShake.sliderAmount = inst;

wy += btnHeight + (btnOffset*4);
inst = instance_create(wx, wy, objGUISlider);
inst.width = btnWidth;
inst.height = 10;
inst.valueUpdate = 2;
inst.valueMin = 1;
inst.valueMax = 5;
inst.valueDrawPosition = "BOTTOM"
inst.valuePrefixText = "Frequency ";
inst.valuePosfixText = " steps";
wBtnShake.sliderFrequency = inst;

wy += btnHeight + (btnOffset*4);
inst = instance_create(wx, wy, objGUISlider);
inst.width = btnWidth;
inst.height = 10;
inst.valueUpdate = 30;
inst.valueMin = 1;
inst.valueMax = 120;
inst.valueDrawPosition = "BOTTOM"
inst.valuePrefixText = "Duration ";
inst.valuePosfixText = " steps";
wBtnShake.sliderHowLong = inst;


wy += btnHeight + (btnOffset*2);
gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);

