/// @description gui_is_mouse_over()
//returns if the mouse is on a gui element
function gui_is_mouse_over() {
	with(objGUI){
	    if(mouseOver){
	        return true;
	    }
	}

	return false;
}
