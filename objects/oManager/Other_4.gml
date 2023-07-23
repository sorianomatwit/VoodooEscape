audio_stop_all();
switch(room){
	case global.levels[2]:
		levelmusic = mLevel2
		levelsound = audio_play_sound(mLevel2,100,false);
		introLen = 6.361;
		loopLen = 38.146;
		total_len = introLen+loopLen;
	break;
	case global.levels[1]:
	levelmusic = mLevel1;
		levelsound = audio_play_sound(mLevel1,100,false);
		introLen = 0;
		loopLen = 56.058;
		total_len = introLen+loopLen;
	break;
	case global.levels[0]:
	levelmusic = mLevel0;
		levelsound = audio_play_sound(mLevel0,100,false);
		introLen = 9.6;
		loopLen = 30;
		total_len = introLen+loopLen;
	break;
}
global.currentLevel = room;

