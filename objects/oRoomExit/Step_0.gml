if(instance_exists(oPlayer) && place_meeting(x,y,oPlayer)){
	if(oPlayer.control) {
		
		endSong(levelSong);
		control = false;
	}
	if(!instance_exists(oTransition)){
		

		global.currentAct = nextAct;
		
		if(room != rLevel3 and global.T_room != T_room){
			interuption();
		}
		global.T_room = T_room;
		if(!global.inCutscene){
			RoomTransition(Transition,T_room);
			instance_destroy();
		}
	}
}