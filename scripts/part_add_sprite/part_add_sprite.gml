var filter = "Sprite Images (*.png *.gif *.jpg *.jpeg)|*.png;*.gif;*.jpg;*.jpeg";
var str = get_open_filename(filter, "Select a File");

//nothing selected
if (str == ""){ 
	return 0; 
} else {

	with(objParticleController){
		if( sprite_exists(varShapeSprite) ){
			sprite_delete(varShapeSprite);
		}
	
		varShapeSprite = sprite_add(str, 0, false, true, 0, 0);
	}
}

click_part_type();