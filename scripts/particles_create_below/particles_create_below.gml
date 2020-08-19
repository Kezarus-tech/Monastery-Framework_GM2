/// @description Create x particles on layer particle_Below
/// @param particle_type
/// @param x
/// @param y
/// @param amount
function particles_create_below(argument0, argument1, argument2, argument3) {
	with(objParticleEngine){
		part_particles_create(partSysBelow, argument1, argument2, argument0, argument3);
	}
}
