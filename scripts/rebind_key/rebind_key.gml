/// @description rebind_key( PlayerActionEnum.[], Alternative* )

/// @param PlayerActionEnum.[] : an enum option
/// @param Alternative* : an enum option

// Calls a pause and wait for a key press
// The key is substituted at the appropriate global key mappings

var key = argument[0];
var alternative = false;
if( argument_count > 1 ){
	alternative = argument[1];
}



