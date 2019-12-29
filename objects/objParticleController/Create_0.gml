alarm[0] = 1; //start the overwatch

partSample1 = part_type_create();

part_type_shape(partSample1, pt_shape_sphere);
part_type_size(partSample1, 1, 2, -0.01, 0);
part_type_scale(partSample1, 1, 1);
part_type_speed(partSample1, 1, 1.5, 0, 0);
part_type_direction(partSample1, 0, 360, 0, 0);
part_type_gravity(partSample1, 0, 0);
part_type_orientation(partSample1, 0, 360, 1, 0, true);
part_type_colour1(partSample1, c_aqua);
part_type_alpha2(partSample1, 0.75, 0);
part_type_life(partSample1, 80, 80);
part_type_blend(partSample1, false);


objCount = noone;
varCount = 1;

objStream = noone;
varStream = false;

lstObjShape = ds_list_create();
varShape = part_index_to_type(0);

objColor1 = noone;
varColor1 = c_white;
objAlpha1 = noone;
varAlpha1 = 1;

objColor2 = noone;
varColor2 = c_white;
objAlpha2 = noone;
varAlpha2 = 1;

objColor3 = noone;
varColor3 = c_white;
objAlpha3 = noone;
varAlpha3 = 1;

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