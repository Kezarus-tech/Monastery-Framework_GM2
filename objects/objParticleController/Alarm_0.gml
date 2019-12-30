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
			if( i == 14 ){
				localShape = -1;
			}else{
				localShape = part_index_to_type(iconIndex);
			}
		}
	}
}
varShape = localShape;
#endregion

#region COLOR & ALPHA
with(objColor1){ other.varColor1 = myColor; }
with(objAlpha1){ 
	 other.varAlpha1 = numbers_only(text, 100) / 100;
}

with(objColor2){ other.varColor2 = myColor; }
with(objColor2Use){ other.varColor2Use = buttonPressed; }
with(objAlpha2){ other.varAlpha2 = numbers_only(text, 100) / 100; }
with(objAlpha2Use){ other.varAlpha2Use = buttonPressed; }

with(objColor3){ other.varColor3 = myColor; }
with(objColor3Use){ other.varColor3Use = buttonPressed; }
with(objAlpha3){ other.varAlpha3 = numbers_only(text, 100) / 100; }
with(objAlpha3Use){ other.varAlpha3Use = buttonPressed; }

with(objBlending){ other.varBlending = buttonPressed; }
#endregion

#region SIZE
with(objSizeMin)	{ other.varSizeMin = numbers_only(text, 1); }
with(objSizeMax)	{ other.varSizeMax = numbers_only(text, 1); }
with(objSizeScaleX)	{ other.varSizeScaleX = numbers_only(text, 1); }
with(objSizeScaleY)	{ other.varSizeScaleY = numbers_only(text, 1); }
with(objSizeIncr)	{ other.varSizeIncr = numbers_only(text, 0); }
with(objSizeWigg)	{ other.varSizeWigg = numbers_only(text, 0); }
#endregion


#region SPEED
with(objSpeedMin)	{ other.varSpeedMin = numbers_only(text, 1); }
with(objSpeedMax)	{ other.varSpeedMax = numbers_only(text, 1); }
with(objSpeedIncr)	{ other.varSpeedIncr = numbers_only(text, 0); }
with(objSpeedWigg)	{ other.varSpeedWigg = numbers_only(text, 0); }
with(objGravQnt)	{ other.varGravQnt = numbers_only(text, 0); }
with(objGravDir)	{ other.varGravDir = numbers_only(text, 0); }
#endregion


#region DIRECTION & ORIENTATION
with(objDirectionMin)		{ other.varDirectionMin = numbers_only(text, 0); }
with(objDirectionMax)		{ other.varDirectionMax = numbers_only(text, 360); }
with(objDirectionIncr)		{ other.varDirectionIncr = numbers_only(text, 0); }
with(objDirectionWigg)		{ other.varDirectionWigg = numbers_only(text, 0); }

with(objOrientationMin)		{ other.varOrientationMin = numbers_only(text, 0); }
with(objOrientationMax)		{ other.varOrientationMax = numbers_only(text, 360); }
with(objOrientationIncr)	{ other.varOrientationIncr = numbers_only(text, 0); }
with(objOrientationWigg)	{ other.varOrientationWigg = numbers_only(text, 0); }

with(objRelative)			{ other.varRelative = buttonPressed; }
#endregion

#region LIFE
with(objLifeMin)		{ other.varLifeMin = numbers_only(text, 60); }
with(objLifeMax)		{ other.varLifeMax = numbers_only(text, 80); }

with(objSteps)			{ other.varSteps = numbers_only(text, 0); }
with(objDeath)			{ other.varDeath = numbers_only(text, 0); }
#endregion




#region SETUP
//EMITTER
	
part_emitter_region(partSysAbove, emitter, 
	emmiterXMin, emmiterXMax, emmiterYMin, emmiterYMax,
	emitterShape, emitterDistrib);


//SHAPE
if( varShape != -1 ){
	part_type_shape(partCurrent, varShape);
}else{
	part_type_sprite(partCurrent, varShapeSprite, false, false, false);
}

//COLOR
if( !varColor2Use ){
	part_type_colour1(partCurrent, varColor1);
}else if( varColor2Use && !varColor3Use ){
	part_type_colour2(partCurrent, varColor1, varColor2);
}else if( varColor2Use && varColor3Use ){
	part_type_colour3(partCurrent, varColor1, varColor2, varColor3);
}

//ALPHA
if( !varAlpha2Use ){
	part_type_alpha1(partCurrent, varAlpha1);
}else if( varAlpha2Use && !varAlpha3Use ){
	part_type_alpha2(partCurrent, varAlpha1, varAlpha2);
}else if( varAlpha2Use && varAlpha3Use ){
	part_type_alpha3(partCurrent, varAlpha1, varAlpha2, varAlpha3);
}

//BLENDING
part_type_blend(partCurrent, varBlending);

//SIZE
part_type_size(partCurrent, varSizeMin, varSizeMax, varSizeIncr, varSizeWigg);
part_type_scale(partCurrent, varSizeScaleX, varSizeScaleY);

//SPEED
part_type_speed(partCurrent, varSpeedMin, varSpeedMax, varSpeedIncr, varSpeedWigg);
part_type_gravity(partCurrent, varGravQnt, varGravDir);

//DIRECTION & ORIENTATION
part_type_direction(partCurrent, varDirectionMin, varDirectionMax, varDirectionIncr, varDirectionWigg);
part_type_orientation(partCurrent, varOrientationMin, varOrientationMax, varOrientationIncr, varOrientationWigg, varRelative);

//LIFE
part_type_life(partCurrent, varLifeMin, varLifeMax);

//STEP
part_type_step(partSampleOriginal, varSteps, partSampleStep);

//DEATH
part_type_death(partSampleOriginal, varDeath, partSampleDeath);



#endregion
