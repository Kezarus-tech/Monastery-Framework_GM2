/// @description gui_create_label( text, x, y, fontType*, fontColor*, fontAlign*, fontScale* )
/// @param  text
/// @param  x
/// @param  y
/// @param  fontType*
/// @param  fontColor*
/// @param  fontAlign* - fa_left, fa_center, fa_right
/// @param  fontScale*
function gui_create_label() {
	var inst = instance_create(argument[1], argument[2], objGUILabel);
	inst.text = argument[0];

	if( argument_count > 3 ){
		if( argument[3] != -1 ){
			inst.fontType = argument[3];
		}
	}
	if( argument_count > 4 ){
		inst.fontColor = argument[4];
	}
	if( argument_count > 5 ){
		inst.fontAlign = argument[5];
	}
	if( argument_count > 6 ){
		inst.fontScale = argument[6];
	}

	return inst;
}