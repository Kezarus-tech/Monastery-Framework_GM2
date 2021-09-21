event_inherited();

guiSprite = sprPartClose;

pressedOffset = 0;

targetScript = func_room_goto;
targetScriptArgs[0] = roomMainFramework;

#region INTERNAL VARS

text = "";
width = sprite_width;
height = sprite_height;

guiSpritePressed = guiSprite;

origin = GUI_TOPLEFT; //always top left

#endregion
