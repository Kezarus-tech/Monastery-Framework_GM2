/// @description json_loader
/// @param path: will load all Jsons on this path (non-recursive)
/// @param globalVarString: the global variable to store the map cointaining all the Jsons
function json_loader(path, globalVarString) {
	var errors = "";
	var rootDirectory = working_directory + path;

	#region CREATE GLOBAL MAP
		if( variable_global_exists(globalVarString) ){
			if( ds_exists( variable_global_get(globalVarString), ds_type_map ) ){
				var size = ds_map_size(variable_global_get(globalVarString)) ;
				var key = ds_map_find_first(variable_global_get(globalVarString));
				for (var i=0; i<size; i++;){
				    ds_map_destroy(ds_map_find_value(variable_global_get(globalVarString), key));
					key = ds_map_find_next(variable_global_get(globalVarString), key);
				}
				ds_map_destroy(variable_global_get(globalVarString));
			}
		}
	
		variable_global_set(globalVarString, ds_map_create());
	#endregion

	#region LOAD ALL FILES
		var fileKey, filePath, file, jsonData;
		var fileName = file_find_first(rootDirectory + "*.json", 0); // fa_* consts are Windows-only
		while(fileName != ""){
			fileName = string_upper(fileName);
			fileKey = string_replace_all(fileName, ".JSON", "");
			filePath =  rootDirectory + fileName;
			file = file_text_open_read(filePath);
			jsonData = "";

			while (!file_text_eof(file)){
				jsonData += file_text_readln(file);
			}
	
			var tempMap = json_decode(jsonData);

			if(tempMap != -1){
				ds_map_add(variable_global_get(globalVarString), fileKey, tempMap);
			}else{
				errors += "Invalid JSON archive: " + fileName + "\n";
			}

			file_text_close(file);
	
		    fileName = file_find_next();
		}
		file_find_close();
	#endregion


	#region LOG
		var logFilename = rootDirectory + "erros.log";
		if( file_exists(logFilename) ){
			file_delete(logFilename);
		}
		var logFile = file_text_open_write(logFilename);

		file_text_write_string(logFile, errors);

		file_text_close(logFile);
	#endregion
}
