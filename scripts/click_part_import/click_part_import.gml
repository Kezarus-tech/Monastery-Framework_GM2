///@description click_part_import( )

with(objParticleController){
	var fileName = get_open_filename("Text Files (*.txt)|*.txt", "Select a File");
	if (fileName != ""){
		var file = file_text_open_read(fileName);
		var textLine = "";
		var arr;
	
		while(!file_text_eof(file)){
			textLine = file_text_readln(file);
			
			//remove spaces, tabs and end of lines
			textLine = string_replace_all(textLine, " ", "");
			textLine = string_replace_all(textLine, "\t", "");
			textLine = string_replace_all(textLine, ");\r\n", "");
		
alert(textLine);
		
			if( string_copy(textLine, 1, 19) == "part_emitter_region" ){
				arr = string_split(textLine, ",");
				emmiterXMin = numbers_only(arr[2], 0);
				emmiterXMax = numbers_only(arr[3], 0);
				emmiterYMin = numbers_only(arr[4], 0);
				emmiterYMax = numbers_only(arr[5], 0);
				
				emitterShape = part_emmiter_shape_from_string(arr[6]);
				emitterDistrib = part_emmiter_distrib_from_string(arr[7]);
			}
	    }
	
	
	
		file_text_close(file);
	}
}