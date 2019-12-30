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

partSampleStep = part_type_create();
part_type_shape(partSampleStep, pt_shape_pixel);
part_type_size(partSampleStep, 1, 2, -0.01, 0);
part_type_scale(partSampleStep, 1, 1);
part_type_speed(partSampleStep, 1, 1.5, 0, 0);
part_type_direction(partSampleStep, 0, 360, 0, 0);
part_type_gravity(partSampleStep, 0, 0);
part_type_orientation(partSampleStep, 0, 360, 1, 0, true);
part_type_colour1(partSampleStep, c_aqua);
part_type_alpha2(partSampleStep, 0.75, 0);
part_type_life(partSampleStep, 80, 80);
part_type_blend(partSampleStep, false);

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




partCurrent = partSampleOriginal;

objCount = noone;
varCount = 1;

objStream = noone;
varStream = false;

lstObjShape = ds_list_create();
varShape = part_index_to_type(0);
varShapeSprite = -1;

objColor1 = noone;
varColor1 = c_white;
objAlpha1 = noone;
varAlpha1 = 1;

objColor2 = noone;
varColor2 = c_white;
objColor2Use = noone;
varColor2Use = true;
objAlpha2 = noone;
varAlpha2 = 1;
objAlpha2Use = noone;
varAlpha2Use = true;

objColor3 = noone;
varColor3 = c_white;
objColor3Use = noone;
varColor3Use = true;
objAlpha3 = noone;
varAlpha3 = 1;
objAlpha3Use = noone;
varAlpha3Use = true;

objBlending = noone;
varBlending = false;

objSizeMin = noone;
varSizeMin = 1;
objSizeMax = noone;
varSizeMax = 1;
objSizeScaleX = noone;
varSizeScaleX = 1;
objSizeScaleY = noone;
varSizeScaleY = 1;
objSizeIncr = noone;
varSizeIncr = 0;
objSizeWigg = noone;
varSizeWigg = 0;

objSpeedMin = noone;
varSpeedMin = 0;
objSpeedMax = noone;
varSpeedMax = 0;
objSpeedIncr = noone;
varSpeedIncr = 0;
objSpeedWigg = noone;
varSpeedWigg = 0;
objGravQnt = noone;
varGravQnt = 0;
objGravDir = noone;
varGravDir = 0;

objDirectionMin = noone;
varDirectionMin = 0;
objDirectionMax = noone;
varDirectionMax = 0;
objDirectionIncr = noone;
varDirectionIncr = 0;
objDirectionWigg = noone;
varDirectionWigg = 0;

objOrientationMin = noone;
varOrientationMin = 0;
objOrientationMax = noone;
varOrientationMax = 0;
objOrientationIncr = noone;
varOrientationIncr = 0;
objOrientationWigg = noone;
varOrientationWigg = 0;

objRelative = noone;
varRelative = false;

objLifeMin = noone;
varLifeMin = 60;
objLifeMax = noone;
varLifeMax = 80;

objSteps = noone;
varSteps = 0;
objDeath = noone;
varDeath = 0;







