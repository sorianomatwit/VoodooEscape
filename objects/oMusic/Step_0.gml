MenuControls();


if(keyBack) {
	menuSelected = !menuSelected;
}
if(keySelect){
	RoomTransition(TRANS_TYPE.slide,rTitleScreen);
}
if(!menuSelected){
	if(current_sound != -1)audio_stop_sound(current_sound);
	current_sound = -1;
	menuSelect += keyDown - keyUp;

	if(menuSelect > array_length_1d(allSongNames) - 1) menuSelect = 0;
	if(menuSelect < 0 ) menuSelect = array_length_1d(allSongNames) - 1;
	clamp(menuSelect,0,array_length_1d(allSongNames) - 1);
	
} else {
	if(current_sound == -1){
		current_sound = audio_play_sound(allSongs[menuSelect],100,false);
	}
	var _Tpos = audio_sound_get_track_position(current_sound);
	if(_Tpos > songTotalLens[menuSelect]){
		audio_sound_set_track_position(current_sound,_Tpos-songloops[menuSelect]);
	}
}
