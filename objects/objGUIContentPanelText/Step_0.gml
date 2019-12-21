event_inherited();
///MOUSE WHEEL UP DOWN

if(mouseOver){
    var changed = false;
    
    if( mouse_wheel_down() ){
        textIndex += 1;
        changed = true;
    }
    
    if( mouse_wheel_up() ){
        textIndex -= 1;
        changed = true;
    }
    
    if(changed){
        textIndex = clamp( textIndex, 0, max(array_length_1d(arrText)-maxLines, 0) );
        scrollBar.valueUpdate = textIndex;
    }
}

///UPDATE BY THE SCROLLBAR
if(instance_exists(scrollBar)){
    textIndex = clamp(scrollBar.valueFinal, 0, array_length_1d(arrText));
}



