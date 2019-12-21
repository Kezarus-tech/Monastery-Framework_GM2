event_inherited();
///CUSTOMIZEABLE VARIABLES

width = 200;
height = 50;

borderOffset = 10;
elementOffset = 5;
elementWidth = 1;
elementHeight = 1;

scrollWidth = 20;

lstContent = ds_list_create();

///INTERNAL VARS
linesMax = 0;
linesNow = 0;

fontHeight = 10;

scrollBar = noone;

//to run the first time and 
//deactivate what is outside the panel
changed = true;

