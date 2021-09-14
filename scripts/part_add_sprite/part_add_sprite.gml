function part_add_sprite() {
	var filter = "Sprite Images (*.png *.gif *.jpg *.jpeg)|*.png;*.gif;*.jpg;*.jpeg";
	var str = get_open_filename(filter, "Select a File");

	//nothing selected
	if (str == ""){ 
		return 0; 
	} else {
		var localWhatParticle = "Original";
		with(objGUIButton){
			if( targetScript == click_edit_particle && buttonPressed ){
				localWhatParticle = text;
			}
		}
	
		with(objParticleController){
			if(localWhatParticle == "Original"){
				varShapeSpriteCurrent = varShapeSpriteOriginal;
			}else if(localWhatParticle == "Steps"){
				varShapeSpriteCurrent = varShapeSpriteStep;
			}else if(localWhatParticle == "Death"){
				varShapeSpriteCurrent = varShapeSpriteDeath;
			}
		
			if( sprite_exists(varShapeSpriteCurrent) ){
				sprite_delete(varShapeSpriteCurrent);
			}
	
			varShapeSpriteCurrent = sprite_add(str, 0, false, true, 0, 0);
		
			if(localWhatParticle == "Original"){
				varShapeSpriteOriginal = varShapeSpriteCurrent;
			}else if(localWhatParticle == "Steps"){
				varShapeSpriteStep = varShapeSpriteCurrent;
			}else if(localWhatParticle == "Death"){
				varShapeSpriteDeath = varShapeSpriteCurrent;
			}
		}
	}

	click_part_type();


}
