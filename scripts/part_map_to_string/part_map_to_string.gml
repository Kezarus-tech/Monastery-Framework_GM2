///@description part_map_to_string( map, particle name, sprite name )
///@param	map
///@param	particle name
///@param	sprite name

var mapLocal = argument0;
var partName = argument1;
var spriteName = argument2;
var finalText = "";

with(objParticleController){


	//SHAPE
	if( mapLocal[? "shape"] != -1 ){
		finalText += "part_type_shape(" + partName + ", " + part_type_string(mapLocal[? "shape"]) + ");";
	}else{
		finalText += "part_type_sprite(" + partName + ", " + spriteName + ", false, false, false);";
	}
	finalText += "\n";


	//COLOR
	if( !mapLocal[? "color2use"] ){
		finalText += "part_type_colour1(" + partName + ", " + to_string(mapLocal[? "color1"]) + ");";
	}else if( mapLocal[? "color2use"] && !mapLocal[? "color3use"] ){
		finalText += "part_type_colour2(" + partName + ", " + to_string(mapLocal[? "color1"]) + ", " + to_string(mapLocal[? "color2"]) + ");";
	}else if( mapLocal[? "color2use"] && mapLocal[? "color3use"] ){
		finalText += "part_type_colour3(" + partName + ", " + to_string(mapLocal[? "color1"]) + ", " + to_string(mapLocal[? "color2"]) + ", " + to_string(mapLocal[? "color3"]) + ");";
	}
	finalText += "\n";

	//ALPHA
	if( !mapLocal[? "alpha2use"] ){
		finalText += "part_type_alpha1(" + partName + ", " + to_string(mapLocal[? "alpha1"]) + ");";
	}else if( mapLocal[? "alpha2use"] && !mapLocal[? "alpha3use"] ){
		finalText += "part_type_alpha2(" + partName + ", " + to_string(mapLocal[? "alpha1"]) + ", " + to_string(mapLocal[? "alpha2"]) + ");";
	}else if( mapLocal[? "alpha2use"] && mapLocal[? "alpha3use"] ){
		finalText += "part_type_alpha3(" + partName + ",  " + to_string(mapLocal[? "alpha1"]) + ", " + to_string(mapLocal[? "alpha2"]) + ", " + to_string(mapLocal[? "alpha3"]) + ");";
	}
	finalText += "\n";

	//BLENDING
	finalText += "part_type_blend(" + partName + ", " + bool_to_string(mapLocal[? "blending"]) + ");";
	finalText += "\n";

	//SIZE
	finalText += "part_type_size(" + partName + ", " + to_string(mapLocal[? "sizemin"]) + ", " + to_string(mapLocal[? "sizemax"]) + ", " + to_string(mapLocal[? "sizeincr"]) + ", " + to_string(mapLocal[? "sizewigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_scale(" + partName + ", " + to_string(mapLocal[? "sizescalex"]) + ", " + to_string(mapLocal[? "sizescaley"]) + ");";
	finalText += "\n";

	//SPEED
	finalText += "part_type_speed(" + partName + ", " + to_string(mapLocal[? "speedmin"]) + ", " + to_string(mapLocal[? "speedmax"]) + ", " + to_string(mapLocal[? "speedincr"]) + ", " + to_string(mapLocal[? "speedwigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_gravity(" + partName + ", " + to_string(mapLocal[? "gravqnt"]) + ", " + to_string(mapLocal[? "gravdir"]) + ");";
	finalText += "\n";

	//DIRECTION & ORIENTATION
	finalText += "part_type_direction(" + partName + ", " + to_string(mapLocal[? "directionmin"]) + ", " + to_string(mapLocal[? "directionmax"]) + ", " + to_string(mapLocal[? "directionincr"]) + ", " + to_string(mapLocal[? "directionwigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_orientation(" + partName + ", " + to_string(mapLocal[? "orientationmin"]) + ", " + to_string(mapLocal[? "orientationmax"]) + ", " + to_string(mapLocal[? "orientationincr"]) + ", " + to_string(mapLocal[? "orientationwigg"]) + ", " + bool_to_string(mapLocal[? "relative"]) + ");";
	finalText += "\n";

	//LIFE
	finalText += "part_type_life(" + partName + ", " + to_string(mapLocal[? "lifemin"]) + ", " + to_string(mapLocal[? "lifemax"]) + ");";
	finalText += "\n";

}

return finalText;