event_inherited();

if(!global.gamePaused){
	if(!OffCamera(self)){
		onFire = true;
	} else onFire = false;
	if(deactivate) onFire = false;
	
	if(onFire){
		xx = random_range(x-sprite_width/4,x+sprite_width/4);
		if(yy <= y - sprite_height - 20){
			yy = ystart -sprite_height+20;
		}
		yy-=3;
		part_particles_create(p2System, xx, yy, fire, 10);
	} else {
		part_system_clear(p2System);
	}
	
	
}
