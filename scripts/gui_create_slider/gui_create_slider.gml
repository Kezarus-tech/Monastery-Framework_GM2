/// @description gui_create_slider( x, y, width, height, sliderWidth*, sliderHeight*, valueMin*, valueMax*, valueUpdate* )
/// @param  x
/// @param  y
/// @param  width
/// @param  height
/// @param  sliderWidth*
/// @param  sliderHeight*
/// @param  valueMin*
/// @param  valueMax*
/// @param  valueUpdate*
// returns the object ID
function gui_create_slider() {
	var inst = instance_create(argument[0], argument[1], objGUISlider);

	with(inst){
	    width = argument[2];
	    height = argument[3];
    
	    if(argument_count > 4){
	        if( argument[4] != -1 ){
	            widthSlider = argument[4];
	        }
	    }
    
	    if(argument_count > 5){
	        if( argument[5] != -1 ){
	            heightSlider = argument[5];
	        }
	    }
    
	    if(argument_count > 6){
	        valueMin = argument[6];
	        valueUpdate = valueMin;
	    }
    
	    if(argument_count > 7){
	        valueMax = argument[7];
	    }
    
	    if(argument_count > 8){
	        valueUpdate = argument[8];
	    }
    
	}

	return inst;
}
