event_inherited();

#region CUSTOMIZEABLE VARIABLES
text = "Text"; //displayed text
icon = sprIconCross; //sprite index

guiSprite = sprCheckButton;

enabled = true;

textOffset = 5;

#endregion

#region INTERNAL VARS
width = sprite_width;
height = sprite_height;

guiSpritePressed = guiSprite;

toggled = true;

origin = GUI_TOPLEFT; //always top left

#endregion