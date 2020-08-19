/// @description gui_create_button( x, y, width, height, text, function*, function_arg0*, function_arg1*, function_arg2*, function_arg3*, function_arg4*, function_arg5* )
/// @param  x
/// @param  y
/// @param  width
/// @param  height
/// @param  text
/// @param  function*
/// @param  function_arg0*
/// @param  function_arg1*
/// @param  function_arg2*
/// @param  function_arg3*
/// @param  function_arg4*
/// @param  function_arg5*
// returns the object ID
function gui_create_button() {
	var inst = instance_create(argument[0], argument[1], objGUIButton);

	inst.width = argument[2];
	inst.height = argument[3];
	inst.text = argument[4];

	if( argument_count > 5 ){
		inst.targetScript = argument[5];
	}

	for (var i=6; i<argument_count; i++){
	    inst.targetScriptArgs[i-6] = argument[i];
	};

	return inst;
}
