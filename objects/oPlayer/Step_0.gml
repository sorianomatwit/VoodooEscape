// events that happen every single frame
//player input
if(!global.gamePaused){
	
	PlayerInputs(control);
	
	if(state != -1){
		script_execute(state);
	}
	if(!instance_exists(oPlayer)){
		with(aim){
			instance_destroy(aim);
		}
	} else {
		aim.x = oPlayer.x;
		aim.y = oPlayer.y - sprite_height+25;
	} 

if(instance_exists(aim)){
	var _dir = point_direction(aim.x,aim.y,mouse_x,mouse_y);
	var _canShoot = false;
	if(_dir > 90 and _dir < 270) {
		if(!place_meeting(aim.x-8,aim.y,oWall)){
			_canShoot = true;	
		} else _canShoot = false;
	} else {
		if(!place_meeting(aim.x+8,aim.y,oWall)){
			_canShoot = true;	
		} else _canShoot = false;
	}
}
	
	if(kactive and active and _canShoot and !place_meeting(aim.x,aim.y-8,oWall)){
		
		audio_play_sound(sfxShoot,sfx,false);
		var _needle = instance_create_depth(aim.x + lengthdir_x(8,_dir),aim.y + lengthdir_y(8,_dir),depth,oNeedle);
		SpriteHandler(char);
		
		_needle.direction = _dir;
		_needle.image_angle = _dir;
		active = false;
		
	}
	if(kGoBack and lastVoodoo != noone and !lastVoodoo.kGoBack){
		PossesVoodoo(lastVoodoo);
	}
	
	invulerable = max(invulerable-1,0);
	flash = max(flash-0.5,0);
}

