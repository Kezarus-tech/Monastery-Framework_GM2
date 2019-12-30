///@description CLEAN UP

ds_list_destroy(lstObjShape);
if( sprite_exists(varShapeSprite) ){
	sprite_delete(varShapeSprite);
}
part_emitter_destroy(partSysAbove, emitter);
