/// @description gui_modal( text, options, event_perform type, event_perform number )
/// @param text
/// @param options - separeted by | ex: "Ok|Undo|Cancel", default: Ok
/// @param event_perform type
/// @param event_perform number
function gui_modal() {
	//Pause the game
	//Shows a text and options on the screen

	//After an option is choose
	//Unpause the game
	//callback the function using event perform
	//and sets a variable modalAnswer

	var text = argument[0];
	var options = "Ok";
	if(argument_count > 1){
		options = argument[1];
	}
	var ev_type = -1;
	if(argument_count > 2){
		ev_type = argument[2]
	}
	var ev_number = -1;
	if(argument_count > 3){
		ev_number = argument[3];
	}

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
}
