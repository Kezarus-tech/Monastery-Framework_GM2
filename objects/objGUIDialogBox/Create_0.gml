event_inherited();

#region CUSTOMIZEABLE VARIABLES
width = 200;
height = 50;

guiSprite = sprPanel;
depth = 100; //same level as panels
origin = GUI_TOPLEFT; // GUI_TOPLEFT or GUI_CENTER

fontType = global.language_font;
fontColor = c_yellow;
textOffset = 10;

text = "Button Text"; //displayed text
textTimer = 3;
dontNeedToBeOnFocus = false; //if set true, will capture any click on the screen and any keystrok
sound = sndTypewriter;

#endregion

#region INTERNAL VARS
textToDisplay = "";
textIndex = 0;
waitForAnykey = false;
textTimerNow = 1;

fontScale = 1;

alarm[1] = 1;

#endregion