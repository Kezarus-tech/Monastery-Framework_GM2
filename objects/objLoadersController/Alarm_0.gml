/// @description LOAD TEXT FROM MAP

//CLEAN VARIABLE
text = "";

//CALL BY ARCHIVE NAME, THI VARIABLE IS YOUR JSON ARCHIVE MAP
var mapTest1 = global.mapJsons[? "TEST1"];

//CALL JSON VARIABLES
text += "field_string: " + mapTest1[? "field_string"]; //CONVENTIONAL
text += "\nfield_number: " + string(map_get_default(mapTest1, "field_number", -1)); //WITH PROTECTION
text += "\nfield_numb: " + string(map_get_default(mapTest1, "field_numb", -1)); //WITH PROTECTION




