//Overwatch the variables and change the particle

alarm[0] = room_speed;

#region EMMITER
with(objCount){ other.varCount = numbers_only(text, 1); }
with(objStream){ other.varStream = buttonPressed; }

with( objGUIRadiobutton ){
	if( group == "SHAPE" && buttonPressed ){
		if(text == "Rect"){
			other.emitterShape = ps_shape_rectangle;
		}else if(text == "Ellipse"){
			other.emitterShape = ps_shape_ellipse;
		}else if(text == "Diam."){
			other.emitterShape = ps_shape_diamond;
		}else if(text == "Line"){
			other.emitterShape = ps_shape_line;
		}
	}
	
	if( group == "DISTRIB" && buttonPressed ){
		if(text == "Linear"){
			other.emitterDistrib = ps_distr_linear;
		}else if(text == "Gauss"){
			other.emitterDistrib = ps_distr_gaussian;
		}else if(text == "IGauss"){
			other.emitterDistrib = ps_distr_invgaussian;
		}
	}
}
#endregion


#region SHAPE
var localShape = part_index_to_type(0);
for(var i=0; i<ds_list_size(lstObjShape); i++){
	with(lstObjShape[| i]){
		if(buttonPressed){
			if( iconIndex == 14 ){
				localShape = -1;
			}else{
				localShape = part_index_to_type(iconIndex);
			}
		}
	}
}
mapCurrent[? "shape"] = localShape;
#endregion

#region COLOR & ALPHA
with(objColor1){ other.mapCurrent[? "color1"] = myColor; }
with(objAlpha1){ other.mapCurrent[? "alpha1"]  = numbers_only(text, 100) / 100; }

with(objColor2){ other.mapCurrent[? "color2"] = myColor; }
with(objColor2Use){ other.mapCurrent[? "color2use"] = buttonPressed; }
with(objAlpha2){ other.mapCurrent[? "alpha2"] = numbers_only(text, 100) / 100; }
with(objAlpha2Use){ other.mapCurrent[? "alpha2use"] = buttonPressed; }

with(objColor3){ other.mapCurrent[? "color3"] = myColor; }
with(objColor3Use){ other.mapCurrent[? "color3use"] = buttonPressed; }
with(objAlpha3){ other.mapCurrent[? "alpha3"] = numbers_only(text, 100) / 100; }
with(objAlpha3Use){ other.mapCurrent[? "alpha3use"] = buttonPressed; }

with(objBlending){ other.mapCurrent[? "blending"] = buttonPressed; }
#endregion

#region SIZE
with(objSizeMin)	{ other.mapCurrent[? "sizemin"] = numbers_only(text, 1); }
with(objSizeMax)	{ other.mapCurrent[? "sizemax"] = numbers_only(text, 1); }
with(objSizeScaleX)	{ other.mapCurrent[? "sizescalex"] = numbers_only(text, 1); }
with(objSizeScaleY)	{ other.mapCurrent[? "sizescaley"] = numbers_only(text, 1); }
with(objSizeIncr)	{ other.mapCurrent[? "sizeincr"] = numbers_only(text, 0); }
with(objSizeWigg)	{ other.mapCurrent[? "sizewigg"] = numbers_only(text, 0); }
#endregion


#region SPEED
with(objSpeedMin)	{ other.mapCurrent[? "speedmin"] = numbers_only(text, 1); }
with(objSpeedMax)	{ other.mapCurrent[? "speedmax"] = numbers_only(text, 1); }
with(objSpeedIncr)	{ other.mapCurrent[? "speedincr"] = numbers_only(text, 0); }
with(objSpeedWigg)	{ other.mapCurrent[? "speedwigg"] = numbers_only(text, 0); }
with(objGravQnt)	{ other.mapCurrent[? "gravqnt"] = numbers_only(text, 0); }
with(objGravDir)	{ other.mapCurrent[? "gravdir"] = numbers_only(text, 0); }
#endregion


#region DIRECTION & ORIENTATION
with(objDirectionMin)		{ other.mapCurrent[? "directionmin"] = numbers_only(text, 0); }
with(objDirectionMax)		{ other.mapCurrent[? "directionmax"] = numbers_only(text, 360); }
with(objDirectionIncr)		{ other.mapCurrent[? "directionincr"] = numbers_only(text, 0); }
with(objDirectionWigg)		{ other.mapCurrent[? "directionwigg"] = numbers_only(text, 0); }

with(objOrientationMin)		{ other.mapCurrent[? "orientationmin"] = numbers_only(text, 0); }
with(objOrientationMax)		{ other.mapCurrent[? "orientationmax"] = numbers_only(text, 360); }
with(objOrientationIncr)	{ other.mapCurrent[? "orientationincr"] = numbers_only(text, 0); }
with(objOrientationWigg)	{ other.mapCurrent[? "orientationwigg"] = numbers_only(text, 0); }

with(objRelative)			{ other.mapCurrent[? "relative"] = buttonPressed; }
#endregion

#region LIFE
with(objLifeMin)		{ other.mapCurrent[? "lifemin"] = numbers_only(text, 60); }
with(objLifeMax)		{ other.mapCurrent[? "lifemax"] = numbers_only(text, 80); }

with(objSteps)			{ other.varSteps = numbers_only(text, 0); }
with(objDeath)			{ other.varDeath = numbers_only(text, 0); }
#endregion





#region SETUP
//EMITTER
	
part_emitter_region(partSysAbove, emitter, 
	emmiterXMin, emmiterXMax, emmiterYMin, emmiterYMax,
	emitterShape, emitterDistrib);


//SHAPE
if( mapCurrent[? "shape"] != -1 ){
	part_type_shape(partCurrent, mapCurrent[? "shape"]);
}else{
	part_type_sprite(partCurrent, varShapeSpriteCurrent, false, false, false);
}

//COLOR
if( !mapCurrent[? "color2use"] ){
	part_type_colour1(partCurrent, mapCurrent[? "color1"] );
}else if( mapCurrent[? "color2use"] && !mapCurrent[? "color3use"] ){
	part_type_colour2(partCurrent, mapCurrent[? "color1"] , mapCurrent[? "color2"] );
}else if( mapCurrent[? "color2use"] && mapCurrent[? "color3use"] ){
	part_type_colour3(partCurrent, mapCurrent[? "color1"] , mapCurrent[? "color2"], mapCurrent[? "color3"]);
}

//ALPHA
if( !mapCurrent[? "alpha2use"] ){
	part_type_alpha1(partCurrent, mapCurrent[? "alpha1"]);
}else if( mapCurrent[? "alpha2use"] && !mapCurrent[? "alpha3use"] ){
	part_type_alpha2(partCurrent, mapCurrent[? "alpha1"], mapCurrent[? "alpha2"]);
}else if( mapCurrent[? "alpha2use"] && mapCurrent[? "alpha3use"] ){
	part_type_alpha3(partCurrent, mapCurrent[? "alpha1"], mapCurrent[? "alpha2"], mapCurrent[? "alpha3"]);
}

//BLENDING
part_type_blend(partCurrent, mapCurrent[? "blending"]);

//SIZE
part_type_size(partCurrent, mapCurrent[? "sizemin"], mapCurrent[? "sizemax"], mapCurrent[? "sizeincr"], mapCurrent[? "sizewigg"]);
part_type_scale(partCurrent, mapCurrent[? "sizescalex"], mapCurrent[? "sizescaley"]);

//SPEED
part_type_speed(partCurrent, mapCurrent[? "speedmin"], mapCurrent[? "speedmax"], mapCurrent[? "speedincr"], mapCurrent[? "speedwigg"]);
part_type_gravity(partCurrent, mapCurrent[? "gravqnt"], mapCurrent[? "gravdir"]);


//DIRECTION & ORIENTATION
part_type_direction(partCurrent, mapCurrent[? "directionmin"], mapCurrent[? "directionmax"], mapCurrent[? "directionincr"], mapCurrent[? "directionwigg"]);
part_type_orientation(partCurrent, mapCurrent[? "orientationmin"], mapCurrent[? "orientationmax"], mapCurrent[? "orientationincr"], mapCurrent[? "orientationwigg"], mapCurrent[? "relative"]);

//LIFE
part_type_life(partCurrent, mapCurrent[? "lifemin"], mapCurrent[? "lifemax"]);

//STEP
part_type_step(partSampleOriginal, varSteps, partSampleStep);

//DEATH
part_type_death(partSampleOriginal, varDeath, partSampleDeath);

#endregion


