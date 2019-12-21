/// @description MOUSE OVER & BLEND
mouseOver = point_in_rectangle(gui_mouse_x(), gui_mouse_y(), buttonLeft, buttonTop, buttonRight, buttonBottom);

if(mouseOver){
    image_blend = c_white;
}else{
    image_blend = c_ltgray;
}



///COLLISION SETUP

gui_setup_collision(origin);

