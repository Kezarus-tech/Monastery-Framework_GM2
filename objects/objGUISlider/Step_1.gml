/// @description DRAG SLIDER

if(buttonPressed && orientation == "HORIZONTAL" ){
    with(slider){
        x = clamp(device_mouse_x_to_gui(0), 
            other.buttonX + (width div 2), 
            other.buttonX + other.width - (width div 2));

        gui_setup_collision(origin);
    }
}else if(buttonPressed && orientation == "VERTICAL" ){
    with(slider){
        y = clamp(device_mouse_y_to_gui(0), 
            other.buttonY + (height div 2), 
            other.buttonY + other.height - (height div 2));

        gui_setup_collision(origin);
    }
}

if(buttonPressed){
    // Update percent value
    event_perform(ev_other, ev_user1);
}

