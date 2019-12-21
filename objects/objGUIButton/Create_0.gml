event_inherited();
///CUSTOMIZEABLE VARIABLES

width = 200;
height = 50;
text = "Button Text"; //displayed text
icon = -1; //sprite index

enabled = true;
stayPressed = false;
toggled = false;

guiSprite = sprButton;
guiSpritePressed = sprButtonPressed;
depth = 0; //always above panels

origin = GUI_TOPLEFT; // GUI_TOPLEFT or GUI_CENTER

fontType = fntStandard;
fontScale = 1;
fontColor = c_yellow;
fontAlign = fa_center; //fa_center, fa_left

pressedOffset = 2;

soundClick = sndClick;

targetScript = noone;
targetScriptArgs[0] = noone;



///INTERNAL VARS
buttonPressed = false;



