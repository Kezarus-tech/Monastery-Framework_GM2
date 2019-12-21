/// @description gui_create_button( x, y, width, height, text, function, [function arg0], [function arg1], [function arg2], [function arg3], [function arg4], [function arg5] )
/// @param  x
/// @param  y
/// @param  width
/// @param  height
/// @param  text
/// @param  function
/// @param  [function arg0]
/// @param  [function arg1]
/// @param  [function arg2]
/// @param  [function arg3]
/// @param  [function arg4]
/// @param  [function arg5] 

// returns the object ID

var inst = instance_create(argument[0], argument[1], objGUIButton);

inst.width = argument[2];
inst.height = argument[3];
inst.text = argument[4];
inst.targetScript = argument[5];

for (var i=6; i<argument_count; i++){
    inst.targetScriptArgs[6-i] = argument[i];
};


return inst;

