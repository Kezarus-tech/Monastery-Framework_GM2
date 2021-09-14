
#region STREAM
if( varStream || (!gui_is_mouse_over() && mouse_check_button(mb_left)) ){
	part_emitter_stream(partSysAbove, emitter, partSampleOriginal, varCount);
} else if (!varStream) {
	part_emitter_stream(partSysAbove, emitter, partSampleOriginal, 0);
}
#endregion

#region SET AREA
if( !gui_is_mouse_over() ){
	if( mouse_check_button_pressed(mb_left) ){
		emmiterXMin = mouse_x;
		emmiterYMin = mouse_y;
		emitterAreaAlpha = 1;
	}
	if( mouse_check_button(mb_left) || mouse_check_button_released(mb_left) ){
		emmiterXMax = mouse_x;
		emmiterYMax = mouse_y;
		emitterAreaAlpha = 1;
	}
}
emitterAreaAlpha -= 0.01;
#endregion