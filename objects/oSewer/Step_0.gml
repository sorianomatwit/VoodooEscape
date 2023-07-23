if(!global.gamePaused){
	if(!OffCamera(self)){
		blowing = true;
	} else blowing = false;
	if(blowing){
		xx = random_range(x-sprite_width/3,x+sprite_width/3);
		if(yy <= y-airHeight){
			yy = ystart;
		}
		yy-=3;
		part_particles_create(particleSystem, xx, yy, particle1, 1);
	} else {
		yy = ystart;
		part_system_clear(particleSystem);
	}
	
}