/// @description CONSTRUCTOR

//always pace as last on inherited objects

#region EASY GUI

//Spot differences on scaling done on room editor and apply
//as width and height
if( sprite_exists(sprite_index) ){
    if( image_xscale != 1 || image_yscale != 1 ){
        width = bbox_right - bbox_left;
        height = bbox_bottom - bbox_top;
    }
}

#endregion

#region DO INITIALIZE

gui_setup_collision(origin);
sprite_index = guiSprite;

#endregion

