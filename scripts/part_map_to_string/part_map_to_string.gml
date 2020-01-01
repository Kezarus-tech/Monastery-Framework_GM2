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
		finalText += "part_type_colour1(" + partName + ", " + string(mapLocal[? "color1"]) + ");";
	}else if( mapLocal[? "color2use"] && !mapLocal[? "color3use"] ){
		finalText += "part_type_colour2(" + partName + ", " + string(mapLocal[? "color1"]) + ", " + string(mapLocal[? "color2"]) + ");";
	}else if( mapLocal[? "color2use"] && mapLocal[? "color3use"] ){
		finalText += "part_type_colour3(" + partName + ", " + string(mapLocal[? "color1"]) + ", " + string(mapLocal[? "color2"]) + ", " + string(mapLocal[? "color3"]) + ");";
	}
	finalText += "\n";

	//ALPHA
	if( !mapLocal[? "alpha2use"] ){
		finalText += "part_type_alpha1(" + partName + ", " + string(mapLocal[? "alpha1"]) + ");";
	}else if( mapLocal[? "alpha2use"] && !mapLocal[? "alpha3use"] ){
		finalText += "part_type_alpha2(" + partName + ", " + string(mapLocal[? "alpha1"]) + ", " + string(mapLocal[? "alpha2"]) + ");";
	}else if( mapLocal[? "alpha2use"] && mapLocal[? "alpha3use"] ){
		finalText += "part_type_alpha3(" + partName + ",  " + string(mapLocal[? "alpha1"]) + ", " + string(mapLocal[? "alpha2"]) + ", " + string(mapLocal[? "alpha3"]) + ");";
	}
	finalText += "\n";

	//BLENDING
	finalText += "part_type_blend(" + partName + ", " + bool_to_string(mapLocal[? "blending"]) + ");";
	finalText += "\n";

	//SIZE
	finalText += "part_type_size(" + partName + ", " + string(mapLocal[? "sizemin"]) + ", " + string(mapLocal[? "sizemax"]) + ", " + string(mapLocal[? "sizeincr"]) + ", " + string(mapLocal[? "sizewigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_scale(" + partName + ", " + string(mapLocal[? "sizescalex"]) + ", " + string(mapLocal[? "sizescaley"]) + ");";
	finalText += "\n";

	//SPEED
	finalText += "part_type_speed(" + partName + ", " + string(mapLocal[? "speedmin"]) + ", " + string(mapLocal[? "speedmax"]) + ", " + string(mapLocal[? "speedincr"]) + ", " + string(mapLocal[? "speedwigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_gravity(" + partName + ", " + string(mapLocal[? "gravqnt"]) + ", " + string(mapLocal[? "gravdir"]) + ");";
	finalText += "\n";

	//DIRECTION & ORIENTATION
	finalText += "part_type_direction(" + partName + ", " + string(mapLocal[? "directionmin"]) + ", " + string(mapLocal[? "directionmax"]) + ", " + string(mapLocal[? "directionincr"]) + ", " + string(mapLocal[? "directionwigg"]) + ");";
	finalText += "\n";
	finalText += "part_type_orientation(" + partName + ", " + string(mapLocal[? "orientationmin"]) + ", " + string(mapLocal[? "orientationmax"]) + ", " + string(mapLocal[? "orientationincr"]) + ", " + string(mapLocal[? "orientationwigg"]) + ", " + bool_to_string(mapLocal[? "relative"]) + ");";
	finalText += "\n";

	//LIFE
	finalText += "part_type_life(" + partName + ", " + string(mapLocal[? "lifemin"]) + ", " + string(mapLocal[? "lifemax"]) + ");";
	finalText += "\n";

}

return finalText;