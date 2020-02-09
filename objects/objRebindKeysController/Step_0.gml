if( instance_exists(objPause) ){
	var code = check_input_button();
	if( code[KeyDataEnum.InputType] != InputTypeEnum.Nothing ){
		rebindCode = code;
		instance_destroy(objPause);
		event_perform(ev_other, ev_user0);
	}
	
}