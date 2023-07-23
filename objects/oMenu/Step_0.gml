
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
	switch(menuSelect) {
		default:
			RoomTransition(TRANS_TYPE.slide,menuRooms[menuSelect]);
		break;
		case 4:
			game_end();
		break;
	}
}



