///CREATE BUTTONS
var offset = 20;
var btnWidth = 200;
var btnHeight = 40;

var wx = offset;
var wy = offset;

gui_create_button(wx, wy, btnWidth, btnHeight, "Main Menu", func_room_goto, roomMainFramework);


// LOAD JSONS
global.mapJsons = -1;
var path = @"Framework/LoaderExample/";
var globalVarString = "mapJsons";
json_loader(path, globalVarString);

text = "";
alarm[0] = 1;