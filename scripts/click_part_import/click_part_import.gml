///@description click_part_import( )
function click_part_import() {

	with(objParticleController){
		var fileName = get_open_filename("Text Files (*.txt)|*.txt", "Select a File");
		if (fileName != ""){
			var file = file_text_open_read(fileName);
			var textLine = "";
			var arr;
			mapCurrent = mapOriginal;
	
			//INITIAL SETUP
			varSteps = 0;
			varDeath = 0;
	
			while(!file_text_eof(file)){
				textLine = file_text_readln(file);
			
				//remove spaces, tabs and end of lines
				textLine = string_replace_all(textLine, " ", "");
				textLine = string_replace_all(textLine, "\t", "");
				textLine = string_replace_all(textLine, ");", "");
				textLine = string_replace_all(textLine, "\r\n", "");
		
				arr = string_split(textLine, ",");

				if( string_copy(textLine, 1, 19) == "part_emitter_region" ){
					emmiterXMin = numbers_only(arr[2], 0);
					emmiterXMax = numbers_only(arr[3], 0);
					emmiterYMin = numbers_only(arr[4], 0);
					emmiterYMax = numbers_only(arr[5], 0);
				
					emitterShape = part_emmiter_shape_from_string(arr[6]);
					emitterDistrib = part_emmiter_distrib_from_string(arr[7]);
				}
			
				// MAP MODE
				if(textLine == "//PARTICLE"){
					mapCurrent = mapOriginal;
				}else if(textLine == "//STEPPARTICLE"){
					mapCurrent = mapStep;
				}else if(textLine == "//DEATHPARTICLE"){
					mapCurrent = mapDeath;
				}
			
				if( string_copy(textLine, 1, 15) == "part_type_shape" ){
					mapCurrent[? "shape"] = part_type_from_string(arr[1]);
				}else if( string_copy(textLine, 1, 16) == "part_type_colour" ){
					mapCurrent[? "color1"] = numbers_only(arr[1], 0);
					mapCurrent[? "color2use"] = false;
					mapCurrent[? "color3use"] = false;
				
					if( array_length_1d(arr) > 2 ){
						mapCurrent[? "color2"] = numbers_only(arr[2], 0);
						mapCurrent[? "color2use"] = true;
					}
				
					if( array_length_1d(arr) > 3 ){
						mapCurrent[? "color3"] = numbers_only(arr[3], 0);
						mapCurrent[? "color3use"] = true;
					}
				}else if( string_copy(textLine, 1, 15) == "part_type_alpha" ){
					mapCurrent[? "alpha1"] = numbers_only(arr[1], 0);
					mapCurrent[? "alpha2use"] = false;
					mapCurrent[? "alpha3use"] = false;
				
					if( array_length_1d(arr) > 2 ){
						mapCurrent[? "alpha2"] = numbers_only(arr[2], 0);
						mapCurrent[? "alpha2use"] = true;
					}
				
					if( array_length_1d(arr) > 3 ){
						mapCurrent[? "alpha3"] = numbers_only(arr[3], 0);
						mapCurrent[? "alpha3use"] = true;
					}
				}else if( string_copy(textLine, 1, 15) == "part_type_blend" ){
					mapCurrent[? "blending"] = (arr[1] == "true");
				}else if( string_copy(textLine, 1, 14) == "part_type_size" ){
					mapCurrent[? "sizemin"] = numbers_only(arr[1], 0);
					mapCurrent[? "sizemax"] = numbers_only(arr[2], 0);
					mapCurrent[? "sizeincr"] = numbers_only(arr[3], 0);
					mapCurrent[? "sizewigg"] = numbers_only(arr[4], 0);
				}else if( string_copy(textLine, 1, 15) == "part_type_scale" ){
					mapCurrent[? "sizescalex"] = numbers_only(arr[1], 0);
					mapCurrent[? "sizescaley"] = numbers_only(arr[2], 0);
				}else if( string_copy(textLine, 1, 15) == "part_type_speed" ){
					mapCurrent[? "speedmin"] = numbers_only(arr[1], 0);
					mapCurrent[? "speedmax"] = numbers_only(arr[2], 0);
					mapCurrent[? "speedincr"] = numbers_only(arr[3], 0);
					mapCurrent[? "speedwigg"] = numbers_only(arr[4], 0);
				}else if( string_copy(textLine, 1, 17) == "part_type_gravity" ){
					mapCurrent[? "gravqnt"] = numbers_only(arr[1], 0);
					mapCurrent[? "gravdir"] = numbers_only(arr[2], 0);
				}else if( string_copy(textLine, 1, 19) == "part_type_direction" ){
					mapCurrent[? "directionmin"] = numbers_only(arr[1], 0);
					mapCurrent[? "directionmax"] = numbers_only(arr[2], 0);
					mapCurrent[? "directionincr"] = numbers_only(arr[3], 0);
					mapCurrent[? "directionwigg"] = numbers_only(arr[4], 0);
				}else if( string_copy(textLine, 1, 21) == "part_type_orientation" ){
					mapCurrent[? "orientationmin"] = numbers_only(arr[1], 0);
					mapCurrent[? "orientationmax"] = numbers_only(arr[2], 0);
					mapCurrent[? "orientationincr"] = numbers_only(arr[3], 0);
					mapCurrent[? "orientationwigg"] = numbers_only(arr[4], 0);
					mapCurrent[? "relative"] = (arr[5] == "true");
				}else if( string_copy(textLine, 1, 14) == "part_type_life" ){
					mapCurrent[? "lifemin"] = numbers_only(arr[1], 0);
					mapCurrent[? "lifemax"] = numbers_only(arr[2], 0);
				}else if( string_copy(textLine, 1, 14) == "part_type_step" ){
					varSteps = numbers_only(arr[1], 0);
				}else if( string_copy(textLine, 1, 15) == "part_type_death" ){
					varDeath = numbers_only(arr[1], 0);
				}
		    }
			file_text_close(file);
		
		#region SET SCREEN GUI
			//EMITTER
			with( objGUIRadiobutton ){
				if( group == "SHAPE" ){
				
					if(objParticleController.emitterShape == ps_shape_rectangle && text == "Rect"){
						buttonPressed = true;
					}else if(objParticleController.emitterShape == ps_shape_ellipse && text == "Ellipse"){
						buttonPressed = true;
					}else if(objParticleController.emitterShape == ps_shape_diamond && text == "Diam."){
						buttonPressed = true;
					}else if(objParticleController.emitterShape == ps_shape_line && text == "Line"){
						buttonPressed = true;
					}
				}
	
				if( group == "DISTRIB" ){
					if(objParticleController.emitterDistrib == ps_distr_linear && text == "Linear"){
						buttonPressed = true;
					}else if(objParticleController.emitterDistrib == ps_distr_gaussian && text == "Gauss"){
						buttonPressed = true;
					}else if(objParticleController.emitterDistrib == ps_distr_invgaussian && text == "IGauss"){
						buttonPressed = true;
					}
				}
			}
		
			with(objSteps)	{ text = objParticleController.varSteps; }
			with(objDeath)	{ text = objParticleController.varDeath; }
		
			//THIS SET ALL THE SCREEN AND PARTICLES
			with(objGUIButton){
				if( targetScript == click_edit_particle && text != "Original" ){
					script_execute(targetScript, targetScriptArgs[0]);
					with(objParticleController){
						event_perform(ev_alarm, 0);
					}
				}
			}
		
			with(objGUIButton){ //CLICK ORIGINAL
				if( targetScript == click_edit_particle && text == "Original" ){
					script_execute(targetScript, targetScriptArgs[0]);
					with(objParticleController){
						event_perform(ev_alarm, 0);
					}
				}
			}
		
			part_particles_clear(objParticleEngine.partSysAbove);
		
		#endregion
		}
	}


}
