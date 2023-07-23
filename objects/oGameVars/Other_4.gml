
if(room == rTitleScreen and !audio_is_playing(menuSong)){
	menuSong = menuVoodooescape;
	menuMusic = audio_play_sound(menuSong,100,false);;
	introLen = 9.513;
	loopLen = 20.454;
	total_len = introLen+loopLen;
}

