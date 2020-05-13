var xx = x;
var yy = y;
particle_countdown++;
if(particle_countdown >= 2){
	with(obj_particle){
		part_particles_create_color(part_sys, xx, yy, part_type_bullet, c_white, 10);
	}
	particle_countdown = 0;
}