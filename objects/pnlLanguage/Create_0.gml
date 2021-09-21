event_inherited();

var offset = 20;
var btnWidth = 200;
var btnHeight = 40;
var btnOffset = 5;

var arrLanguages;
arrLanguages[0] = "English";
arrLanguages[1] = "Portuguese";
arrLanguages[2] = "German";
arrLanguages[3] = "Russian";
arrLanguages[4] = "Japanese";
arrLanguages[5] = "Chinese";

width = (offset*2) + btnWidth;
height = (offset*2) + (btnHeight * 2) + ((btnHeight+btnOffset) * array_length(arrLanguages));
x = (surface_get_width(application_surface) div 2)-(width div 2);
y = 50;

var wx = x + offset;
var wy = y + offset;
var inst;

for(var i=0; i<array_length(arrLanguages); i++){
	inst = gui_create_button(wx, wy, btnWidth, btnHeight, lang(arrLanguages[i]), lang_btn_click, arrLanguages[i]);
	wy += btnHeight + btnOffset;
}

wy += btnHeight;
inst = gui_create_button(wx, wy, btnWidth, btnHeight, lang("Main Menu"), func_room_goto, roomMainFramework);
