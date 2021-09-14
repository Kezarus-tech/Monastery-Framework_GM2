event_inherited();

#region CUSTOMIZEABLE VARIABLES
width = 200;
height = 50;

heightIncrement = 20;
scrollWidth = 20;

lstContent = ds_list_create();

#endregion

#region INTERNAL VARS
scrollBar = noone;
instanceTop = noone;
instanceBottom = noone;
linesMax = 0;
linesNow = 0;

//to run the first time and 
//deactivate what is outside the panel
changed = true;

#endregion