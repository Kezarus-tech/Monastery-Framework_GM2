event_inherited();
///CUSTOMIZEABLE VARIABLES
fontType = fntStandard;
fontColor = c_yellow;
fontOffset = 20;




///INTERNAL VARIABLES
text = ""; 
options = "";
ev_type = -1;
ev_number = -1;
owner = noone;
modalAnswer = "";

depth = -1000; //ALWAYS ON TOP OF EVERYTHING



///SETUP SIZE & POSITION
var appWidth = surface_get_width(application_surface);
var appHeight = surface_get_height(application_surface);

offset = 20;
width = appWidth div 2;

x = (appWidth div 2) - (width div 2)
y = appHeight div 5;



