///@description click_part_export( )

with(objParticleController){
	var finalText = "";
	
	finalText += "//EMITTER\n";
	finalText += "part_emitter_region(partSysAbove, emitter, " +
				string(emmiterXMin) + ", " + string(emmiterXMax) + ", " + 
				string(emmiterYMin) + ", " + string(emmiterYMax) + ", " +
				part_emmiter_shape_string(emitterShape) + ", " + part_emmiter_distrib_string(emitterDistrib) + ");";
	finalText += "\n\n";

	finalText += "//PARTICLE\n";
	finalText += part_map_to_string(mapOriginal, "partSampleOriginal", "varShapeSpriteOriginal");

	//STEP
	if( varSteps != 0 ){
		finalText += "\n";
		finalText += "part_type_step(partSampleOriginal, " + string(varSteps) + ", partSampleStep);";
		finalText += "\n";
		
		finalText += "//STEP PARTICLE\n";
		finalText += part_map_to_string(mapOriginal, "partSampleStep", "varShapeSpriteStep");
	}

	//DEATH
	if( varDeath != 0 ){
		finalText += "\n";
		finalText += "part_type_death(partSampleOriginal, " + string(varDeath) + ", partSampleDeath);";
		finalText += "\n";

		finalText += "//DEATH PARTICLE\n";
		finalText += part_map_to_string(mapOriginal, "partSampleDeath", "varShapeSpriteDeath");
	}
	
	
	alert(finalText);
}
