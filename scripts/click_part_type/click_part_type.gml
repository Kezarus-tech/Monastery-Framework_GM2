/// @description click_part_type(  )
function click_part_type() {

	with(objGUIButton){
		if( targetScript == click_part_type || targetScript == part_add_sprite ){
			buttonPressed = false;
		}
	}

	buttonPressed = true;


}
