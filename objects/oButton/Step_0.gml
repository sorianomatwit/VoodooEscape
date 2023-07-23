if(!global.gamePaused){
	image_speed = 0;
	if(blueButton) {
		if(!place_meeting(x,y-1,pMover)){
			if(On){
				audio_play_sound(sfxbUnpush,50,false);
			}
			On = false;
			
		}
		if(On) {
			image_index = 2
			//audio_play_sound(sfxbPush,50,false);
		} else {
			image_index = 0;
		}
	} else {
		if(On){
			image_index = 2;
		} else {
			image_index = 0;
		}
	}
}