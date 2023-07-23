if(global.gamePaused){
	MenuControls();
	
	
	if(controlsUi == -1){
		if(keySelect) {
			menuSelected = true;
		}
		if(!menuSelected){
			menuSelect += keyDown - keyUp;

			if(menuSelect > array_length_1d(menu) - 1) menuSelect = 0;
			if(menuSelect < 0 ) menuSelect = array_length_1d(menu) - 1;
			clamp(menuSelect,0,array_length_1d(menu) - 1);
		} else {
			switch(menuSelect) {
				case 0:
					global.gamePaused = !global.gamePaused;
					audio_play_sound(sfxPause,50,false);
					with(all) {
						image_speed = gamePauseImageSpeed;
					}
					menuSelected = false;
				break;
				case 1:
					
					controlsUi = instance_create_depth(x,y,-bbox_bottom,oControls);
				break;
				case 2:
					switch(room) {
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
			}
		}
	} else {
		if(keySelect || keyboard_check_pressed(vk_escape)) {
			instance_destroy(controlsUi);
			controlsUi = -1;
			menuSelected = false;
		}
	}
}