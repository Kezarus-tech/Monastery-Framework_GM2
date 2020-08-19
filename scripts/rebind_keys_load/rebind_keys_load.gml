/// @description rebind_keys_load()

// Creates the maps needed for 
// Read the default commands based on the list
// And the CONFIG.INI
function rebind_keys_load() {
	//DESTROY MAP
	if( variable_global_exists("key_mapping") ){
		if( ds_exists(global.key_mapping, ds_type_map) ){
			ds_map_destroy(global.key_mapping);
		}
	}

	//DESTROY MAP ALT
	if( variable_global_exists("key_mapping_alt") ){
		if( ds_exists(global.key_mapping_alt, ds_type_map) ){
			ds_map_destroy(global.key_mapping_alt);
		}
	}

	//CREATE THE MAPS
	global.key_mapping = ds_map_create();
	global.key_mapping_alt = ds_map_create();

	//OPEN CONFIG AND LOOP
	ini_open("CONFIG.INI");

	var list = global.lstControls;
	var arr, enumKey, textValue, arrCommand;

	for( var i=0; i<ds_list_size(list); i++ ){
		arr = list[| i];
		enumKey = arr[ControlsEnum.PlayerAction];
		textValue = arr[ControlsEnum.Name];
	
		arrCommand = array_create(2, -1);
		arrCommand[KeyDataEnum.InputType] = ini_read_real("controls", textValue+"_InputType", arr[ControlsEnum.DefaultInputType]);
		arrCommand[KeyDataEnum.Value] = ini_read_real("controls", textValue+"_Value", arr[ControlsEnum.DefaultValue]);
	
		ds_map_add(global.key_mapping, enumKey, arrCommand);
	
	
		arrCommand = array_create(2, -1);
		arrCommand[KeyDataEnum.InputType] = ini_read_real("controls_alt", textValue+"_InputType", arr[ControlsEnum.AlternativeInputType]);
		arrCommand[KeyDataEnum.Value] = ini_read_real("controls_alt", textValue+"_Value", arr[ControlsEnum.AlternativeValue]);
	
		ds_map_add(global.key_mapping_alt, enumKey, arrCommand);
	}

	ini_close();
}