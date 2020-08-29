/// @description map_get_default(map, key, myDefault)
/// @param map
/// @param key
/// @param myDefault
function map_get_default(map, key, myDefault){
	if( ds_map_exists(map, key) ){
		return map[? key];
	}else{
		return myDefault;
	}
}