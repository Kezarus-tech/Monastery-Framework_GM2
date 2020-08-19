/// @description CREATE SCREENSHOT & SETUP

screen_save("PausedScreen.png");
pauseScreenShot = sprite_add("PausedScreen.png", 1, false, false, 0, 0);
file_delete("PausedScreen.png");

myColor = c_white;
myScale = 1;

//SETUP
appWidth = surface_get_width(application_surface);
appHeight = surface_get_height(application_surface);

image_xscale = appWidth / sprite_get_width(pauseScreenShot);
image_yscale = appHeight / sprite_get_height(pauseScreenShot);

///CREATE LISTS & EXCEPTIONS
lstInstances = ds_list_create();
lstExceptions = ds_list_create();

//JUST ADD YOUR GLOBAL EXCEPTIONS HERE
//ds_list_add(lstExceptions, objOrbital);
ds_list_add(lstExceptions, objMouseGui);


///DEACTIVATE INSTANCES

//This deactives and registry only what is active
//So, if you have instances that you want to remain inactive,
//this method garatee that only what is active now is reactivated
//This is why I am not using deactivate all here =]

with(all){
    if( id != other.id ){
        var canBeDeactivated = true;
        
        for( var i=0; i<ds_list_size(other.lstExceptions); i++ ){
            if( object_index == other.lstExceptions[| i] ){
                canBeDeactivated = false;
                break;
            }
        }
        
        if(canBeDeactivated){
            ds_list_add(other.lstInstances, id);
            instance_deactivate_object(id);
        }
    }
}

///CUSTOMIZEABLE VARIABLES

//this indicates if the pause can draw the pause text and can unpause itself
//if set to true, a third party have to just destroy the pause
suppress = false;
showText = false;
text = "Press 'Space' to unpause";
