MenuControls();

if(keySelect) {
	RoomTransition(TRANS_TYPE.slide,rTitleScreen);
}
if(global.currentAct == 5){
var _Tpos = audio_sound_get_track_position(creditsSound);
	if(_Tpos > total_len ){
		audio_sound_set_track_position(creditsSound,_Tpos-loopLen);
	}
}