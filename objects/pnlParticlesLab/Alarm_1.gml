///@description 
alarm[1] = room_speed * 0.25;

statsText = 
	"FPS: " + string(fps) + 
	"\nFPS Real: " + string(round(fps_real)) + 
	"\nParticles: " + string(part_particles_count(objParticleEngine.partSysAbove));