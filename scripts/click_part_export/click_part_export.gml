///@description click_part_export( )

with(objParticleController){
	var finalText = "";
	
	finalText += "//EMITTER\n";
	finalText += "part_emitter_region(partSysAbove, emitter, " +
				string(emmiterXMin) + ", " + string(emmiterXMax) + ", " + 
				string(emmiterYMin) + ", " + string(emmiterYMax) + ", " +
				part_emmiter_shape_to_string(emitterShape) + ", " + part_emmiter_distrib_to_string(emitterDistrib) + ");";
	finalText += "\n\n";

	finalText += "//PARTICLE\n";
	finalText += part_map_to_string(mapOriginal, "partSampleOriginal", "varShapeSpriteOriginal");

	//STEP
	if( varSteps != 0 ){
		finalText += "\n";
		finalText += "part_type_step(partSampleOriginal, " + string(varSteps) + ", partSampleStep);";
		finalText += "\n";
		
		finalText += "//STEP PARTICLE\n";
		finalText += part_map_to_string(mapStep, "partSampleStep", "varShapeSpriteStep");
	}

	//DEATH
	if( varDeath != 0 ){
		finalText += "\n";
		finalText += "part_type_death(partSampleOriginal, " + string(varDeath) + ", partSampleDeath);";
		finalText += "\n";

		finalText += "//DEATH PARTICLE\n";
		finalText += part_map_to_string(mapDeath, "partSampleDeath", "varShapeSpriteDeath");
	}
	
	
	var fileName = get_save_filename("Text Files (*.txt)|*.txt", "Untitled.txt");
	if (fileName != ""){
		var file = file_text_open_write(fileName);
		file_text_write_string(file, finalText);
		file_text_close(file);
	}
}
