event_inherited();

#region CUSTOMIZEABLE VARIABLES

//Bar dimensions
width = 200;
height = 10;

//Bar sprite
guiSprite = sprSliderBar;

//Slider dimensions
widthSlider = 10;
heightSlider = 24;
//Slider sprite
guiSpriteSlider = sprSlider;

valueDrawPosition = ""; //"", TOP, BOTTOM, LEFT, RIGHT
valuePrefixText = "";
valuePosfixText = "";
valueMin = 0;
valueMax = 100;

fontType = global.language_font;
fontScale = 1;
fontColor = c_yellow;

//IF YOU CHANGE THESE VALUES
//THE OBJECT AUTO DETECTS AND 
//UPDATES THE SLIDER
valueUpdate = -1; // Set On Load or Update
valueUpdatePercentual = -1; // same as above, but percentual

depth = 0; //always above panels

#endregion

#region INTERNAL VARS & SETUP COLISIONS

orientation = "HORIZONTAL"; //HORIZONTAL or VERTICAL

origin = GUI_TOPLEFT; // always TOPLEFT
text = "";

valuePercent = 0;
valueFullText = ""; // full text to draw
valueFinal = 0; // the actual value calculated using valueMin and valueMax

alarm[0] = 1; // slider initializer
slider = noone;

buttonPressed = false;

gui_setup_collision(origin);

#endregion