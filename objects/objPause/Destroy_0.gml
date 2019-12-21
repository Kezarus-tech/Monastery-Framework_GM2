/// @description ACTIVATE INSTANCES
for( var i=0; i<ds_list_size(lstInstances); i++ ){
    instance_activate_object(lstInstances[| i]);
}

///DESTROY LISTS AND SCREENSHOT
ds_list_destroy(lstInstances);
ds_list_destroy(lstExceptions);
sprite_delete(pauseScreenShot);

