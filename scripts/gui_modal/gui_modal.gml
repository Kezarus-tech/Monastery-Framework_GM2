/// @description gui_modal( text, options, event_perform type, event_perform number )
/// @param text
/// @param options - separeted by | ex: "Ok|Undo|Cancel"
/// @param event_perform type
/// @param event_perform number

//Pause the game
//Shows a text and options on the screen

//After an option is choose
//Unpause the game
//callback the function using event perform
//and sets a variable modalAnswer

var text = argument0;
var options = argument1;
var ev_type = argument2;
var ev_number = argument3;
var owner = id; //who called the function

var inst = instance_create(0, 0, objPause);
inst.suppress = true;

inst = instance_create(0, 0, objModal);

inst.text = text;
inst.options = options;
inst.ev_type = ev_type;
inst.ev_number = ev_number;
inst.owner = owner;

return inst;







