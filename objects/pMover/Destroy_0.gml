part_emitter_region(P_System, Particle1_Emitter2, bbox_left, bbox_right, bbox_top, bbox_bottom, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(P_System,Particle1_Emitter2, part3, 30);
if(char == chars.player){
	oManager.alarm[4] = 60;
}else {
	if(part_particles_count(P_System) <= 0){
		part_system_destroy(P_System);
		part_emitter_destroy(P_System,Particle1_Emitter2);
		
	}
}