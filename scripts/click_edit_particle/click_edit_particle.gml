/// @description click_edit_particle(  )
function click_edit_particle(argument0) {

	with(objGUIButton){
		if( targetScript == click_edit_particle ){
			buttonPressed = false;
		}
	}

	buttonPressed = true;

	with(objParticleController){
		var controller = id;
		if(argument0 == "Original"){
			mapCurrent = mapOriginal;
			partCurrent = partSampleOriginal;
			varShapeSpriteCurrent = varShapeSpriteOriginal;
		}else if(argument0 == "Steps"){
			mapCurrent = mapStep;
			partCurrent = partSampleStep;
			varShapeSpriteCurrent = varShapeSpriteStep;
		}else if(argument0 == "Death"){
			mapCurrent = mapDeath;
			partCurrent = partSampleDeath;
			varShapeSpriteCurrent = varShapeSpriteDeath;
		}
	
		//LOAD VARIABLES INTO OBJECTS
	#region SHAPE
		for(var i=0; i<ds_list_size(lstObjShape); i++){
			with(lstObjShape[| i]){
				buttonPressed = false;
				if(iconIndex == controller.mapCurrent[? "shape"]){
					buttonPressed = true;
				}else if(iconIndex == 14 && controller.mapCurrent[? "shape"] == -1){
					buttonPressed = true;
				}
			}
		}
	#endregion
	
	
	#region COLOR & ALPHA
		with(objColor1){ myColor = controller.mapCurrent[? "color1"] }
		with(objAlpha1){ text = controller.mapCurrent[? "alpha1"] * 100; }

		with(objColor2){ myColor = controller.mapCurrent[? "color2"]; }
		with(objColor2Use){ buttonPressed = controller.mapCurrent[? "color2use"]; }
		with(objAlpha2){ text = controller.mapCurrent[? "alpha2"] * 100; }
		with(objAlpha2Use){ buttonPressed = controller.mapCurrent[? "alpha2use"]; }

		with(objColor3){ myColor = controller.mapCurrent[? "color3"]; }
		with(objColor3Use){ buttonPressed = controller.mapCurrent[? "color3use"]; }
		with(objAlpha3){ text = controller.mapCurrent[? "alpha3"] * 100; }
		with(objAlpha3Use){ buttonPressed = controller.mapCurrent[? "alpha3use"]; }

		with(objBlending){ buttonPressed = controller.mapCurrent[? "blending"]; }
	#endregion
	
	#region SIZE
		with(objSizeMin)	{ text = controller.mapCurrent[? "sizemin"]; }
		with(objSizeMax)	{ text = controller.mapCurrent[? "sizemax"]; }
		with(objSizeScaleX)	{ text = controller.mapCurrent[? "sizescalex"]; }
		with(objSizeScaleY)	{ text = controller.mapCurrent[? "sizescaley"]; }
		with(objSizeIncr)	{ text = controller.mapCurrent[? "sizeincr"]; }
		with(objSizeWigg)	{ text = controller.mapCurrent[? "sizewigg"]; }
	#endregion

	#region SPEED
		with(objSpeedMin)	{ text = controller.mapCurrent[? "speedmin"]; }
		with(objSpeedMax)	{ text = controller.mapCurrent[? "speedmax"]; }
		with(objSpeedIncr)	{ text = controller.mapCurrent[? "speedincr"]; }
		with(objSpeedWigg)	{ text = controller.mapCurrent[? "speedwigg"]; }
		with(objGravQnt)	{ text = controller.mapCurrent[? "gravqnt"]; }
		with(objGravDir)	{ text = controller.mapCurrent[? "gravdir"]; }
	#endregion

	#region DIRECTION & ORIENTATION
		with(objDirectionMin)		{ text = controller.mapCurrent[? "directionmin"]; }
		with(objDirectionMax)		{ text = controller.mapCurrent[? "directionmax"]; }
		with(objDirectionIncr)		{ text = controller.mapCurrent[? "directionincr"]; }
		with(objDirectionWigg)		{ text = controller.mapCurrent[? "directionwigg"]; }

		with(objOrientationMin)		{ text = controller.mapCurrent[? "orientationmin"]; }
		with(objOrientationMax)		{ text = controller.mapCurrent[? "orientationmax"]; }
		with(objOrientationIncr)	{ text = controller.mapCurrent[? "orientationincr"]; }
		with(objOrientationWigg)	{ text = controller.mapCurrent[? "orientationwigg"]; }

		with(objRelative)			{ buttonPressed = controller.mapCurrent[? "relative"]; }
	#endregion

	#region LIFE
		with(objLifeMin)		{ text = controller.mapCurrent[? "lifemin"]; }
		with(objLifeMax)		{ text = controller.mapCurrent[? "lifemax"]; }
	#endregion
	}



}
