#region CREATE PARTICLE SYSTEM
var layerAbove = layer_create(-10000, "particle_Above");
var layerBelow = layer_create(10000, "particle_Below");

partSysAbove = part_system_create_layer(layerAbove, true);
partSysBelow = part_system_create_layer(layerBelow, true);
#endregion

//CREATE EVERY PARTICLE HERE AND ASSIGN A VARIABLE TO IT
#region partExample
partExample = part_type_create();
part_type_shape(partExample, pt_shape_sphere);
part_type_size(partExample, 1, 2, -0.01, 0);
part_type_scale(partExample, 1, 1);
part_type_speed(partExample, 1, 1.5, 0, 0);
part_type_direction(partExample, 0, 360, 0, 0);
part_type_gravity(partExample, 0, 0);
part_type_orientation(partExample, 0, 360, 1, 0, true);
part_type_colour1(partExample, c_aqua);
part_type_alpha2(partExample, 0.75, 0);
part_type_life(partExample, 40, 60);
part_type_blend(partExample, true);
#endregion

