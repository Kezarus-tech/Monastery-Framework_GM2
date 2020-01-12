event_inherited();

#region CUSTOMIZEABLE VARIABLES
fontType = global.language_font;
fontColor = c_yellow;
fontOffset = 20;

#endregion


#region INTERNAL VARIABLES
text = ""; 
options = "";
ev_type = -1;
ev_number = -1;
owner = noone;
modalAnswer = "";

depth = -1000; //ALWAYS ON TOP OF EVERYTHING

#endregion


#region SETUP SIZE & POSITION
var appWidth = surface_get_width(application_surface);
var appHeight = surface_get_height(application_surface);

offset = 20;
width = appWidth div 2;

x = (appWidth div 2) - (width div 2)
y = appHeight div 5;

#endregion

