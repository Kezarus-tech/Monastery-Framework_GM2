/// @description alert( string, real )
/// @param string
/// @param real 
function alert() {

	// Just a shorthand version of show_debug_message("Value: " + string(value))

	var wText = argument[0];

	if( argument_count > 1 ){
	    wText += ": " + to_string(argument[1]);
	}

	show_debug_message(wText);





}
