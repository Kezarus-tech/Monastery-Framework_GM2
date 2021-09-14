///CREATE BUTTONS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;

var wx = offset;
var wy = offset;

gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);


// LOAD JSONS
global.mapJsons = -1;
<<<<<<< HEAD
var path = string_lower(@"Framework/LoaderExample/");
=======
var path = @"Framework/LoaderExample/";
>>>>>>> 8ab01af7c3cbc1b272cdc72769ea6d3f3903034d
var globalVarString = "mapJsons";
json_loader(path, globalVarString);

text = "";
alarm[0] = 1;