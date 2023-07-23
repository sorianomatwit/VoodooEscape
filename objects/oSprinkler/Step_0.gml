if(!spray){
	part_system_destroy(p3_system);
	part_emitter_destroy(p3_system,emmiterRain);
	part_type_destroy(part_rain);
	raining = false;
} else if(!raining){
	part_emitter_region(p3_system,emmiterRain,x,x+sprite_width,y+sprite_height,y+reach,ps_shape_rectangle,ps_distr_linear);
	alarm[1] = 1;
	alarm[0] = waitTime;
}