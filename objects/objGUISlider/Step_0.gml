event_inherited();

#region CLICK AND DRAG DETECTION

var mouseOverSlider = false;
with(slider){
    mouseOverSlider = mouseOver;
}

if( mouseOver || mouseOverSlider ){
    if( mouse_check_button_pressed(mb_left) ){
        buttonPressed = true;
    }
}

if( mouse_check_button_released(mb_left) ){
    if(buttonPressed){
        buttonPressed = false;
        //CALL ON RELEASE EVENT
        event_perform(ev_other, ev_user2);
    }
}

#endregion


#region VALUE - UPDATE
if(!visible){
    //DO NOTHING
}else
if( valueUpdatePercentual != -1 || valueUpdate != -1 ){
    
    if( valueUpdatePercentual != -1 ){
        valuePercent = valueUpdatePercentual;
    }else
    if( valueUpdate != -1 ){
        valuePercent = (valueUpdate-valueMin)/(valueMax-valueMin)*100
    }
    
    valueUpdatePercentual = -1;
    valueUpdate = -1;
        
    if(orientation == "HORIZONTAL" ){
        var realIniX = (slider.width div 2);
        var realEndX = width - (slider.width div 2);
        slider.x = buttonX + (((realEndX-realIniX)*(valuePercent/100))+realIniX);
    }else{
        var realIniY = (slider.height div 2);
        var realEndY = height - (slider.height div 2);
        slider.y = buttonY + (((realEndY-realIniY)*(valuePercent/100))+realIniY);
    }
    
    //UPDATE FINAL VALUE
    event_perform(ev_other, ev_user1);
}

#endregion

