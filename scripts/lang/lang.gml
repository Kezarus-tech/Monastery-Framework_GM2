///@description lang( key )
///@param key : a key to return the correct value from the language archive
function lang(argument0) {
	if( !ds_map_exists(global.language_map, argument0) ){
		alert("LANGUAGE ERROR - " + global.language + ".txt" + " don't have a value for key: " + argument0);
		return argument0;
	}else{
		return ds_map_find_value(global.language_map, argument0);
	}
}
