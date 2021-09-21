alarm[0] = 1; //start the overwatch

partSysAbove = objParticleEngine.partSysAbove; //just a pointer reference

emitter = part_emitter_create(partSysAbove);

emitterShape = ps_shape_rectangle;
emitterDistrib = ps_distr_linear;
emmiterXMin = room_width*0.6;
emmiterXMax = emmiterXMin+1;
emmiterYMin = room_height div 2;
emmiterYMax = emmiterYMin+1;
emitterAreaAlpha = 1;


mapOriginal = ds_map_create();
partSampleOriginal = part_type_create();
part_type_shape(partSampleOriginal, pt_shape_sphere);
part_type_size(partSampleOriginal, 1, 2, -0.01, 0);
part_type_scale(partSampleOriginal, 1, 1);
part_type_speed(partSampleOriginal, 1, 1.5, 0, 0);
part_type_direction(partSampleOriginal, 0, 360, 0, 0);
part_type_gravity(partSampleOriginal, 0, 0);
part_type_orientation(partSampleOriginal, 0, 360, 1, 0, true);
part_type_colour1(partSampleOriginal, c_aqua);
part_type_alpha2(partSampleOriginal, 0.75, 0);
part_type_life(partSampleOriginal, 80, 80);
part_type_blend(partSampleOriginal, false);

mapStep = ds_map_create();
partSampleStep = part_type_create();
part_type_shape(partSampleStep, pt_shape_flare);
part_type_size(partSampleStep, 0.5, 0.5, -0.01, 0);
part_type_scale(partSampleStep, 1, 1);
part_type_speed(partSampleStep, 1, 1.5, 0, 0);
part_type_direction(partSampleStep, 0, 360, 0, 0);
part_type_gravity(partSampleStep, 0, 0);
part_type_orientation(partSampleStep, 0, 360, 1, 0, true);
part_type_colour1(partSampleStep, c_aqua);
part_type_alpha2(partSampleStep, 0.75, 0);
part_type_life(partSampleStep, 80, 80);
part_type_blend(partSampleStep, false);

mapDeath = ds_map_create();
partSampleDeath = part_type_create();
part_type_shape(partSampleDeath, pt_shape_sphere);
part_type_size(partSampleDeath, 1, 2, -0.01, 0);
part_type_scale(partSampleDeath, 1, 1);
part_type_speed(partSampleDeath, 1, 1.5, 0, 0);
part_type_direction(partSampleDeath, 0, 360, 0, 0);
part_type_gravity(partSampleDeath, 0, 0);
part_type_orientation(partSampleDeath, 0, 360, 1, 0, true);
part_type_colour1(partSampleDeath, c_aqua);
part_type_alpha2(partSampleDeath, 0.75, 0);
part_type_life(partSampleDeath, 80, 80);
part_type_blend(partSampleDeath, false);



mapCurrent = mapOriginal;
partCurrent = partSampleOriginal;

objCount = noone;
varCount = 1;

objStream = noone;
varStream = false;

lstObjShape = ds_list_create();
mapCurrent[? "shape"] = part_index_to_type(0);
varShapeSpriteCurrent = -1;
varShapeSpriteOriginal = -1;
varShapeSpriteStep = -1;
varShapeSpriteDeath = -1;

objColor1 = noone;
mapCurrent[? "color1"] = c_white;
objAlpha1 = noone;
mapCurrent[? "alpha1"] = 1;

objColor2 = noone;
mapCurrent[? "color2"] = c_white;
objColor2Use = noone;
mapCurrent[? "color2use"] = true;
objAlpha2 = noone;
mapCurrent[? "alpha2"] = 1;
objAlpha2Use = noone;
mapCurrent[? "alpha2use"] = true;

objColor3 = noone;
mapCurrent[? "color3"] = c_white;
objColor3Use = noone;
mapCurrent[? "color3use"] = true;
objAlpha3 = noone;
mapCurrent[? "alpha3"] = 1;
objAlpha3Use = noone;
mapCurrent[? "alpha3use"] = true;

objBlending = noone;
mapCurrent[? "blending"] = false;

objSizeMin = noone;
mapCurrent[? "sizemin"] = 1;
objSizeMax = noone;
mapCurrent[? "sizemax"] = 1;
objSizeScaleX = noone;
mapCurrent[? "sizescalex"] = 1;
objSizeScaleY = noone;
mapCurrent[? "sizescaley"] = 1;
objSizeIncr = noone;
mapCurrent[? "sizeincr"] = 0;
objSizeWigg = noone;
mapCurrent[? "sizewigg"] = 0;

objSpeedMin = noone;
mapCurrent[? "speedmin"] = 0;
objSpeedMax = noone;
mapCurrent[? "speedmax"] = 0;
objSpeedIncr = noone;
mapCurrent[? "speedincr"] = 0;
objSpeedWigg = noone;
mapCurrent[? "speedwigg"] = 0;
objGravQnt = noone;
mapCurrent[? "gravqnt"] = 0;
objGravDir = noone;
mapCurrent[? "gravdir"] = 0;

objDirectionMin = noone;
mapCurrent[? "directionmin"] = 0;
objDirectionMax = noone;
mapCurrent[? "directionmax"] = 0;
objDirectionIncr = noone;
mapCurrent[? "directionincr"] = 0;
objDirectionWigg = noone;
mapCurrent[? "directionwigg"] = 0;

objOrientationMin = noone;
mapCurrent[? "orientationmin"] = 0;
objOrientationMax = noone;
mapCurrent[? "orientationmax"] = 0;
objOrientationIncr = noone;
mapCurrent[? "orientationincr"] = 0;
objOrientationWigg = noone;
mapCurrent[? "orientationwigg"] = 0;

objRelative = noone;
mapCurrent[? "relative"] = false;

objLifeMin = noone;
mapCurrent[? "lifemin"] = 60;
objLifeMax = noone;
mapCurrent[? "lifemax"] = 80;

objSteps = noone;
varSteps = 0;
objDeath = noone;
varDeath = 0;


#region ADD VARS TO MAP

var size, key, i;
size = ds_map_size(mapOriginal);
key = ds_map_find_first(mapOriginal);
for (i = 0; i < size; i++;){
	mapStep[? key] = mapOriginal[? key];
	mapDeath[? key] = mapOriginal[? key];
	
	key = ds_map_find_next(mapOriginal, key);
}

#endregion





