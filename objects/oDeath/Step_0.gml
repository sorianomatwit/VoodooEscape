
MenuControls();


if(keySelect) {
	menuSelected = true;
}

if(!menuSelected){
	menuSelect += keyDown - keyUp;

	if(menuSelect > array_length_1d(menu) - 1) menuSelect = 0;
	if(menuSelect < 0 ) menuSelect = array_length_1d(menu) - 1;
	clamp(menuSelect,0,array_length_1d(menu) - 1);
} else {
	audio_stop_all();
	
	switch(menuSelect) {
		case 0:
			RoomTransition(TRANS_TYPE.slide,global.currentLevel);
		break;
		case 1:
			switch(global.currentLevel) {
						case global.levels[2]:
						audio_stop_sound(mLevel1);
					break;
					case global.levels[1]:
						audio_stop_sound(mLevel1);
					break;
					case global.levels[0]:
						audio_stop_sound(mLevel0);
					break;
				}
			RoomTransition(TRANS_TYPE.slide,rTitleScreen);
		break;
		case 3:
			game_end();
		break;
	}
}
