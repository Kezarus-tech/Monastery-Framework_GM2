/// @description VARIABLES

#region CUSTOMIZEABLE VARIABLES

width = 200;
height = 50;

guiSprite = sprPanel;

depth = 100; //always below the buttons

origin = GUI_TOPLEFT; // GUI_TOPLEFT or GUI_CENTER

#endregion

#region INTERNAL VARS & INITIALIZER

detectorPosSize = 0;
image_blend = c_ltgray;
mySeed = irandom(50000);

//BASIC VARS
buttonX         = 0;
buttonY         = 0;
buttonLeft      = 0;
buttonRight     = 0;
buttonTop       = 0;
buttonBottom    = 0;

///INITIALIZER
alarm[0] = 1;

#endregion
