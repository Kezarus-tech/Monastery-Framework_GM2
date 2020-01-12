event_inherited();

#region CUSTOMIZEABLE VARIABLES

width = 200;
height = 50;
text = "Button Text"; //displayed text
icon = -1; //sprite index
iconIndex = 0; //subimage of the sprite icon to be presented

enabled = true;
stayPressed = false;
toggled = false;

guiSprite = sprButton;
guiSpritePressed = sprButtonPressed;
depth = 0; //always above panels

origin = GUI_TOPLEFT; // GUI_TOPLEFT or GUI_CENTER

fontType = global.language_font;
fontScale = 1;
fontColor = c_yellow;
fontAlign = fa_center; //fa_center, fa_left

pressedOffset = 2;

soundClick = sndClick;

targetScript = noone;
targetScriptArgs[0] = noone;

#endregion

#region INTERNAL VARS

buttonPressed = false;

#endregion
