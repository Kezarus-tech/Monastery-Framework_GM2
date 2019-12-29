//Overwatch the variables and change the particle

alarm[0] = room_speed;

#region EMMITER
with(objCount){
	other.varCount = numbers_only(text, 1);
}

with(objStream){
	other.varStream = buttonPressed;
}
#endregion


#region SHAPE
var localShape = part_index_to_type(0);
for(var i=0; i<ds_list_size(lstObjShape); i++){
	with(lstObjShape[| i]){
		if(buttonPressed){
			localShape = part_index_to_type(iconIndex);
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
with(objAlpha2){ 
	 other.varAlpha2 = numbers_only(text, 100) / 100;
}

with(objColor3){ other.varColor3 = myColor; }
with(objAlpha3){
	 other.varAlpha3 = numbers_only(text, 100) / 100;
}

with(objBlending){
	other.varBlending = buttonPressed;
}
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

#region SETUP
part_type_shape(partSample1, varShape);

//COLOR
if( varColor1 == varColor2 ){
	part_type_colour1(partSample1, varColor1);
}else if( varColor2 == varColor3 ){
	part_type_colour2(partSample1, varColor1, varColor2);
}else{
	part_type_colour3(partSample1, varColor1, varColor2, varColor3);
}

//ALPHA
if( varAlpha1 == varAlpha2 ){
	part_type_alpha1(partSample1, varAlpha1);
}else if( varAlpha2 == varAlpha3 ){
	part_type_alpha2(partSample1, varAlpha1, varAlpha2);
}else{
	part_type_alpha3(partSample1, varAlpha1, varAlpha2, varAlpha3);
}

//BLENDING
part_type_blend(partSample1, varBlending);

//SIZE
part_type_size(partSample1, varSizeMin, varSizeMax, varSizeIncr, varSizeWigg);
part_type_scale(partSample1, varSizeScaleX, varSizeScaleY);

//SPEED
part_type_speed(partSample1, varSpeedMin, varSpeedMax, varSpeedIncr, varSpeedWigg);
part_type_gravity(partSample1, varGravQnt, varGravDir);

//DIRECTION & ORIENTATION
part_type_direction(partSample1, varDirectionMin, varDirectionMax, varDirectionIncr, varDirectionWigg);
part_type_orientation(partSample1, varOrientationMin, varOrientationMax, varOrientationIncr, varOrientationWigg, varRelative);


//part_type_life(partSample1, 80, 80);


#endregion
