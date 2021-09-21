///@description CLEAN UP

ds_list_destroy(lstObjShape);

if( sprite_exists(varShapeSpriteOriginal) ){
	sprite_delete(varShapeSpriteOriginal);
}
if( sprite_exists(varShapeSpriteStep) ){
	sprite_delete(varShapeSpriteStep);
}
if( sprite_exists(varShapeSpriteDeath) ){
	sprite_delete(varShapeSpriteDeath);
}

part_emitter_destroy(partSysAbove, emitter);

ds_map_destroy(mapOriginal);
ds_map_destroy(mapStep);
ds_map_destroy(mapDeath);

