/// @description lang_load( archive )

///@param archive : the archive name on the path Included Files/Framework/Languages/[archive name].txt

// load the dictionary for the language support


var fileName = working_directory + "Framework/Languages/" + argument0 + ".txt";

if( !file_exists(fileName) ){
	alert("LANGUAGE ERROR - " + argument0 + ".txt doen't exists");
	return false;
}


if( variable_global_exists("language_map") ){
	ds_map_destroy(global.language_map);
}

global.language = argument0;
global.language_map = ds_map_create();
var dic = global.language_map;

var file = file_text_open_read(fileName);
var arr;
	
while (!file_text_eof(file)){
	arr = string_split( string_replace(file_text_readln(file), "\r\n", ""), "|");
	if( ds_map_exists(dic, arr[0]) ){
		alert("LANGUAGE ERROR - " + argument0 + ".txt" + " have a duplicated entry for key: " + arr[0]);
	}else{
		if( arr[0] == "<FONT-FAMILY>" ){
			lang_font_load(arr[1]);
		}else if( arr[0] != "" ){
			ds_map_add(dic, arr[0], arr[1]);
		}
	}
}
	
file_text_close(file);

return true;