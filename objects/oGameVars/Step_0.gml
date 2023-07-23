if(keyboard_check_pressed(vk_f11)){
	full = !full;
	window_set_fullscreen(full);
}
if(room == rCredits or room == rTitleScreen or room = rControls){
var _Tpos = audio_sound_get_track_position(menuMusic);
	if(_Tpos > total_len ){
		audio_sound_set_track_position(menuMusic,_Tpos-loopLen);
	}
} else if(audio_is_playing(menuSong) && room != rMusic ){
	audio_stop_sound(menuSong);
}
