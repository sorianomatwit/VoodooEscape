if(!global.gamePaused) {
	if(!global.inCutscene) levelTime--;
	switch(room) {
		case global.levels[0]:
			audio_resume_sound(mLevel0);
		break;
		case global.levels[1]:
			audio_resume_sound(mLevel1);
		break;
		case global.levels[2]:
			audio_resume_sound(mLevel2);
		break;
	}
	
	var _Tpos = audio_sound_get_track_position(levelsound);
	if(_Tpos > total_len ){
		audio_sound_set_track_position(levelsound,_Tpos-loopLen);
	}
	if(timesUp && !global.inCutscene){
		
		instance_destroy(oPlayer);
	}
} else {
	switch(room) {
		case global.levels[0]:
			audio_pause_sound(mLevel0);
		break;
		case global.levels[1]:
			audio_pause_sound(mLevel1);
		break;
		case global.levels[2]:
			audio_pause_sound(mLevel2);
		break;
	}
}


