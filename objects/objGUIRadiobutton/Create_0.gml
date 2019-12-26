event_inherited();

#region CUSTOMIZEABLE VARIABLES
text = "Text"; //displayed text
group = "Group";
icon = sprIconCircle; //sprite index

guiSprite = sprCheckButton;

enabled = true;
textOffset = 5;

#endregion

#region INTERNAL VARS
width = sprite_width;
height = sprite_height;

guiSpritePressed = guiSprite;

stayPressed = true;
toggled = false;

#endregion