function PlayerMovement(){
	//other wall collsions
	var _button = collision_rectangle(x-5,y-5,x+5,y+5,oButton,false,false);
	if(instance_exists(_button) && !_button.On) JumpOnButton();
	TrashCollision();
	SpikeCollision();
	//calcualte movement
	var _sliding = false;
	
	var _move = kRight - kLeft;
	#region wall sliding
	if(char == chars.player){
		if(state != PlayerHurt){
			if(!wallJump){
				hspd = round(_move * walkspd); 
			}
			var _slidingSpd = 1.15;
	
			if(hcollision && !vcollision && sign(vspd) > 0 && !place_meeting(x+(image_xscale*3),y,oButton) ){
				vspd /= _slidingSpd;
				_sliding = true;
				SpikeCollision();
			} else _sliding = false;
			//jump stuff
			var _Opdir = image_xscale * -1;
			if(_sliding && kJump && char == chars.player) {
				audio_play_sound(sfxJump,sfx,false);
				vspd = -jumpHeight;
				_move = 0
				hspd = _Opdir* walkspd;
				if(place_meeting(x+image_xscale,y,oWall)) hcollision = true;
				wallJump = true;
				alarm[6] = 20;
			}
			if(vcollision ){
				wallJump = false;
			}
		}
	} else {//regular horizontal control
		hspd = round(_move * walkspd); 
	}
	vspd += grv;
	#endregion
	#region regular collision
	//jumping
	var _door = instance_place(x,y+1,oDoor);
	if ( !_sliding && ((instance_exists(_door) and !_door.Unlocked) || place_meeting(x,y+3,oWall) || place_meeting(x,y + 1,oRVoodoo)) && (kJump)) 
	{
		audio_play_sound(sfxJump,sfx,false);
		vspd = -jumpHeight;
	}
	
	//Horizontal movement
	var _door = instance_place(x+hspd,y,oDoor);
	if (place_meeting(x+hspd,y,oWall) || place_meeting(x+hspd,y,oDoor) and !_door.Unlocked)
	{
		//while loops forever
		while (!place_meeting(x+sign(hspd),y,oWall) && !place_meeting(x+sign(hspd),y,oDoor))
		{
			x = round(x + sign(hspd));
			
		}
		hspd = 0;
			
	} 
	x = round(x + hspd);
	
	//vertical movement 
	var _door = instance_place(x,y+vspd,oDoor);
	if (place_meeting(x,y + vspd,oWall) || place_meeting(x,y+vspd,oDoor) and !_door.Unlocked)
	{
		
		//while loops forever
		while (!place_meeting(x,y+sign(vspd),oWall) && !place_meeting(x,y+sign(vspd),oDoor))
		{
			y = round(y + sign(vspd));
		}
		vspd = 0;
	}
	
	y = round(y + vspd);
	if(char != chars.Bvoodoo){
		OnVoodoo();
	}
	//hcollsion dection
	var _buffer = 20;
	var _door = instance_place(x+(image_xscale * _buffer),y,oDoor);
	if(char == chars.player){
		/*
		show_debug_message([
		(!place_meeting(x+(image_xscale*3),y,oButton)),
		(place_meeting(x+image_xscale,y,oWall) || (place_meeting(x+(image_xscale* _buffer) ,y,oDoor))),
		(instance_exists(_door) and !_door.Unlocked)
		]
		);*/
	}
	if( !place_meeting(x+(image_xscale*3),y,oButton) and (place_meeting(x+image_xscale,y,oWall) 
	|| (place_meeting(x+(image_xscale* _buffer) ,y,oDoor) and !_door.Unlocked)))  {
		hcollision = true;
	} else {
		hcollision = false;
	}
	#endregion
}

function OnVoodoo(){
	if(char != chars.Rvoodoo){
		if ((place_meeting(x,y + 1,oRVoodoo)))
		{
			var _doll = collision_rectangle(x-5,y,x+5,y+5,oRVoodoo,false,false);
			if(instance_exists(_doll) && _doll.active){
				if(y > _doll.y - _doll.sprite_height){
					y = _doll.y - _doll.sprite_height
				}
				vspd = 0;
				return true;
				
			}
		}
		return false;
	}
	return false;
}

function JumpOnButton(){
	var _button = collision_rectangle(x-5,y-5,x+5,y+5,oButton,false,false);
	if ((place_meeting(x,y + 1,oButton)))
	{	
		if( char != chars.Rvoodoo && instance_exists(_button) && _button.sprite_index == sBlueButton){
			//blue button
			_button.On = true;
			audio_play_sound(sfxbPush,50,false);
			} else if(instance_exists(_button)){
				_button.On = false;
				
			} else if(char == chars.Rvoodoo && instance_exists(_button) && _button.sprite_index == sBlueButton && _button.On) {
				_button.On = false;
			}
		if(instance_exists(_button) && !_button.On){
			if(char != chars.Rvoodoo && instance_exists(_button) && _button && state != PlayerShrink){//red button
				_button.On = true;
				audio_play_sound(sfxbPush,50,false);
			} 
		}
	}
}

function TrashCollision(){
	var _trashx = instance_place(x+image_xscale,y,oTrashFire);
	var _trashy = instance_place(x,y+sign(vspd),oTrashFire);
	if((hcollision && place_meeting(x+image_xscale,y,oTrashFire) && instance_exists(_trashx) && _trashx.onFire) or 
	(vcollision && place_meeting(x,y+sign(vspd),oTrashFire) && instance_exists(_trashy) && _trashy.onFire)) {
		if(char == chars.player && state != PlayerHurt){
			movingDist = 75;
			state = PlayerHurt;
		} else if(char != chars.player){
			switch(char){
				case chars.Bvoodoo:
				if(state != PlayerGlow){
					state = PlayerDeath;
				}
				break;
				case chars.Yvoodoo:
					state = PlayerDeath;
				break;
				case chars.Rvoodoo:
					state = PlayerDeath;
				break;
			}	
		} 
		return true;
	}
	return false;
}

function SpikeCollision(){
	if(place_meeting(x+image_xscale,y,oSpikes) or place_meeting(x,y+1,oSpikes) && state != PlayerHurt) {
		state = PlayerDeath;
		return true;
	}
	return false;
}

