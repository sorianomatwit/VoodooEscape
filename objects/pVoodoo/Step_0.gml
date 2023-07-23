
PlayerInputs(control);

script_execute(state);



if(control){
	if(instance_exists(oPlayer)){
		oPlayer.control = false;
		if(kGoBack && !oPlayer.kGoBack){
			control = false;
			SpriteHandler(char);
			if(instance_exists(oPlayer)){
				oPlayer.active = true;
				global.inControl = oPlayer;
				global.camera.follow = oPlayer;
			}
		}
	}
}







