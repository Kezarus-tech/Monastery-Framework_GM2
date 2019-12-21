/// @description LOCAL INITIALIZER

if( width > height ){
    orientation = "HORIZONTAL";
}else{
    orientation = "VERTICAL";
}

if( orientation == "HORIZONTAL" ){
    slider = instance_create(buttonX + (widthSlider div 2), buttonY+(height div 2), objGUIPanel);
}else{
    slider = instance_create(buttonX + (width div 2), buttonY+(heightSlider div 2), objGUIPanel);
}

slider.origin = GUI_CENTER;
slider.guiSprite = guiSpriteSlider;
slider.width = widthSlider;
slider.height = heightSlider;
slider.depth = depth-1;

if( valueUpdate == -1 ){
    valueUpdate = valueMin;
}

visible = true;

event_inherited();
