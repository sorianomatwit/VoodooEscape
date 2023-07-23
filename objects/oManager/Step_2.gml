if(keyboard_check_pressed(vk_escape) && !global.inCutscene){
	global.gamePaused = !global.gamePaused;
	audio_play_sound(sfxPause,50,false);
	if(global.gamePaused){
		with(all) {
			gamePauseImageSpeed = image_speed;
			image_speed = 0;
		}
	} else {
		
		with(all) {
			image_speed = gamePauseImageSpeed;
		}
	}
}

if(round(levelTime/room_speed) <= 0) {
	timesUp = true;
}
