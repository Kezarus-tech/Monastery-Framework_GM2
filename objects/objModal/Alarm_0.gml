
#region CREATE BUTTONS & SETUP HEIGHT
draw_set_font(fontType);
var textHeight = string_height_ext(string_hash_to_newline(text), -1, width-(fontOffset*2));

var arrOptions = string_split(options, "|");

var wx = x + fontOffset;
var wy = y + textHeight + (fontOffset*2);
var buttonWidth = 200;
var buttonHeight = 30;
var buttonOffset = 5;


for(var i=0; i<array_length(arrOptions); i++){
    inst = instance_create(wx, wy, objModalButton);
    inst.text = arrOptions[i];
    inst.width = buttonWidth;
    inst.height = buttonHeight;
    inst.depth = depth-1; //just above the modal
    
    wy += buttonHeight + buttonOffset;
}

height = wy - y - buttonOffset + fontOffset;

#endregion

///VISIBLE = TRUE
visible = true;

event_inherited();
