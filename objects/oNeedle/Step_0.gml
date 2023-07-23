if(!global.gamePaused){
	speed = 15;
	if(OffCamera(self) || place_meeting(x,y,oWall) || (place_meeting(x,y,oDoor) && !instance_place(x,y,oDoor).Unlocked)){
		audio_play_sound(sfxNeedle,50,false);
		instance_destroy();
	}
} else {//if game paused
	speed = 0;
}
