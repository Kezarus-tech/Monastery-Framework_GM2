event_inherited();

#region SETUP INI
//SETUP POSITION
x = 10;
y = 10;

var controller = instance_create(0,0,objParticleController);

var offset = 20;
var guiHeight = 22;
var guiFontScale = 0.7;

width = (offset*2) + 260;
height = surface_get_height(application_surface) - (offset*1);

var inst;

inst = instance_create(-100, -100, btnPartClose);
inst.x = x + width - inst.sprite_width + (inst.sprite_width div 3);
inst.y = y - (inst.sprite_height div 3);

statsText = "";
alarm[1] = 1;

#endregion

#region EMMITER
var wx = x;
var wy = y + 10;

titlesX = x + (width div 2);
gui_create_label( "EMITTER", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wx += 60;
wy += 20;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = 50;
inst.height = guiHeight;
inst.text = 1;
inst.label = "Count: ";
controller.objCount = inst;

wx += 50 + 70;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Stream: ";
inst.buttonPressed = true;
controller.objStream = inst;

var radioOffset = 70;

wy += 25;
wx = x + 55;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.buttonPressed = true;
inst.text = "Rect";
inst.group = "SHAPE";
wx += radioOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Ellipse";
inst.group = "SHAPE";
wx += radioOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Diam.";
inst.group = "SHAPE";
wx += radioOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Line";
inst.group = "SHAPE";

wy += 25;
wx = x + 55;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.buttonPressed = true;
inst.text = "Linear";
inst.group = "DISTRIB";
wx += radioOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "Gauss";
inst.group = "DISTRIB";
wx += radioOffset;
inst = instance_create(wx, wy, objGUIRadiobutton);
inst.text = "IGauss";
inst.group = "DISTRIB";


#endregion

#region SHAPE
wy += 30;
wx = x;
gui_create_label( "SHAPE", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wx = x + 13;
var faceBtnShape = 28;
var faceBtnOffset = 3;

var i=0;
wy += 20;
repeat(15){
	if(i == 7){
		wy += faceBtnShape + faceBtnOffset;
		wx = x + 13;
	}
	
	inst = gui_create_button(wx, wy, faceBtnShape, faceBtnShape, "");
	inst.guiSprite = sprSliderBar;
	inst.guiSpritePressed = sprPartBtnPressed;
	inst.stayPressed = true;
	inst.toggled = false;
	inst.icon = sprPartParticles;
	inst.iconIndex = i;
	inst.pressedOffset = 0;
	inst.targetScript = click_part_type;
	ds_list_add(controller.lstObjShape, inst);
	
	if(i == 0){ //DEFAULT IS 0
		with(inst){
			event_perform(ev_other, ev_user0); //EMULATES CLICK
		}
	}
	
	if(i == 14){ //ADD SPRITE BUTTON
		inst.targetScript = part_add_sprite;
	}
	
	wx += faceBtnShape + faceBtnOffset;
	i++;
}
#endregion

#region COLOR & ALPHA
wy += guiHeight+15;
gui_create_label( "COLOR & ALPHA", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wy += 20
wx = x + 13;
var colorBtnWidth =  guiHeight div 2;

//COLOR & ALPHA 1
var alphaWidth = 35;
var alphaOffset = 20;

inst = instance_create(wx, wy, btnPartBlend);
inst.width = colorBtnWidth;
inst.height = guiHeight;
controller.objColor1 = inst;
wx += colorBtnWidth-1;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = alphaWidth;
inst.height = guiHeight;
inst.text = "100";
controller.objAlpha1 = inst;

//COLOR & ALPHA 2
wx += alphaWidth + alphaOffset + 8;
inst = instance_create(wx, wy, btnPartBlend);
inst.width = colorBtnWidth;
inst.height = guiHeight;
controller.objColor2 = inst;
wx += colorBtnWidth-1;

inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "";
inst.buttonPressed = true;
controller.objColor2Use = inst;
wx += 22;

inst = instance_create(wx, wy, objGUIInputText);
inst.width = alphaWidth;
inst.height = guiHeight;
inst.text = "100";
controller.objAlpha2 = inst;

wx += alphaWidth-1;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "";
inst.buttonPressed = true;
controller.objAlpha2Use = inst;

//COLOR & ALPHA 3
wx += 25 + alphaOffset;
inst = instance_create(wx, wy, btnPartBlend);
inst.width = colorBtnWidth;
inst.height = guiHeight;
controller.objColor3 = inst;
wx += colorBtnWidth-1;

inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "";
inst.buttonPressed = true;
controller.objColor3Use = inst;
wx += 22;

inst = instance_create(wx, wy, objGUIInputText);
inst.width = alphaWidth;
inst.height = guiHeight;
inst.text = "100";
controller.objAlpha3 = inst;

wx += alphaWidth-1;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "";
inst.buttonPressed = true;
controller.objAlpha3Use = inst;


wx = x + 127;
wy += 25;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Additive blending: ";
controller.objBlending = inst;
#endregion

#region SIZE
wy += 30;
gui_create_label( "SIZE", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

var sizeBtnWidth = 50;

wx = x + 40;
wy += 20;
var wyOld = wy;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "Min: ";
controller.objSizeMin = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "Max: ";
controller.objSizeMax = inst;

wx += 106;
wy = wyOld;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "ScaleX: ";
controller.objSizeScaleX = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "ScaleY: ";
controller.objSizeScaleY = inst;

wx += 89;
wy = wyOld;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Incr: ";
controller.objSizeIncr = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Wigg: ";
controller.objSizeWigg = inst;

#endregion

#region MOTION
wy += 30;
gui_create_label( "MOTION", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wx = x + 40;
wy += 18;
var wyOld = wy;

gui_create_label( "Speed", wx, wy, -1, c_yellow, fa_left, guiFontScale );
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "Min: ";
controller.objSpeedMin = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 1;
inst.label = "Max: ";
controller.objSpeedMax = inst;

wx += 106;
wy = wyOld;
gui_create_label( "Gravity", wx, wy, -1, c_yellow, fa_left, guiFontScale );
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Quant: ";
controller.objGravQnt = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Direc: ";
controller.objGravDir = inst;

wx += 89;
wy = wyOld;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Incr: ";
controller.objSpeedIncr = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Wigg: ";
controller.objSpeedWigg = inst;

#endregion

#region ANGLE & LIFE
wy += 30;
gui_create_label( "ANGLE & LIFE", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wx = x + 45;
wy += 18;
var wyOld = wy;

gui_create_label( "Direction", wx, wy, -1, c_yellow, fa_left, guiFontScale );
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Min: ";
controller.objDirectionMin = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 360;
inst.label = "Max: ";
controller.objDirectionMax = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Incr: ";
controller.objDirectionIncr = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Wigg: ";
controller.objDirectionWigg = inst;

wx += 96;
wy = wyOld;
gui_create_label( "Orientation", wx, wy, -1, c_yellow, fa_left, guiFontScale );
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Min: ";
controller.objOrientationMin = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 360;
inst.label = "Max: ";
controller.objOrientationMax = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Incr: ";
controller.objOrientationIncr = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Wigg: ";
controller.objOrientationWigg = inst;

wy += guiHeight;
inst = instance_create(wx, wy, objGUICheckbox);
inst.text = "Relative: ";
controller.objRelative = inst;

wx += 94;
wy = wyOld;
gui_create_label( "Life", wx, wy, -1, c_yellow, fa_left, guiFontScale );
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 60;
inst.label = "Min: ";
controller.objLifeMin = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 80;
inst.label = "Max: ";
controller.objLifeMax = inst;

wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Steps: ";
controller.objSteps = inst;
wy += guiHeight;
inst = instance_create(wx, wy, objGUIInputText);
inst.width = sizeBtnWidth;
inst.height = guiHeight;
inst.text = 0;
inst.label = "Death: ";
controller.objDeath = inst;

#endregion

#region EDIT
wy += guiHeight + 30;
gui_create_label( "EDIT PARTICLES", titlesX, wy, -1, c_yellow, fa_center, guiFontScale );

wy += 25;
wx = x + 18;
var btnEditWidth = 80;

inst = gui_create_button(wx, wy, btnEditWidth, guiHeight, "Original");
inst.guiSprite = sprSliderBar;
inst.guiSpritePressed = sprPartBtnPressed;
inst.stayPressed = true;
inst.toggled = false;
inst.pressedOffset = 0;
inst.buttonPressed = true;
inst.fontScale = guiFontScale;
	
wx += btnEditWidth + 10;
inst = gui_create_button(wx, wy, btnEditWidth, guiHeight, "Steps");
inst.guiSprite = sprSliderBar;
inst.guiSpritePressed = sprPartBtnPressed;
inst.stayPressed = true;
inst.toggled = false;
inst.pressedOffset = 0;
inst.fontScale = guiFontScale;

wx += btnEditWidth + 10;
inst = gui_create_button(wx, wy, btnEditWidth, guiHeight, "Death");
inst.guiSprite = sprSliderBar;
inst.guiSpritePressed = sprPartBtnPressed;
inst.stayPressed = true;
inst.toggled = false;
inst.pressedOffset = 0;
inst.fontScale = guiFontScale;

#endregion

#region STREAMLINE
with(objGUIInputText){
	fontScale = guiFontScale;
	guiSprite = sprSliderBar;
	guiSpriteFocus = sprSliderBar;
	selectionOffset = 2;
	textOffset = 2;
}

with(objGUICheckbox){
	fontScale = guiFontScale;
	guiSprite =	sprPartCheck;
	textOnLeft = true;
}
#endregion