/// @description Create n particles on layer particle_Above
/// @param particle_type
/// @param x
/// @param y
/// @param amount
function particles_create_above(argument0, argument1, argument2, argument3) {
	with(objParticleEngine){
		part_particles_create(partSysAbove, argument1, argument2, argument0, argument3);
	}
}
