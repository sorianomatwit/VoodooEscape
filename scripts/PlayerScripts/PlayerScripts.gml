// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function animationEnd(){
	if(round(image_index) >= round(image_number - 1)){
		return true;
	}
	return false;
}

function PlayerWalkAnimation(){
	//Animation
	var _doorBool = false;
	var _door = instance_place(x,y+1,oDoor);
	
	if(!place_meeting(x,y+1,oDoor)){
		_doorBool = true;
	} 
	if(instance_exists(_door) && _door.Unlocked) {
		_doorBool = true;
	}
	if (!place_meeting(x,y+1,oWall) && !OnVoodoo() && _doorBool)
	{
		//image index is the frame you want to use and 
		//sprite index is the sprite you want to use
		
		if(char == chars.player && hcollision && sign(vspd) > 0 ) {
			sprite_index = sp_Wslide;
		} else {
			sprite_index = sp_jump;
			image_speed = 0;
			if (sign(vspd) > 0)image_index = 1; else image_index = 0;
		}
		vcollision = false;
	}
	else
	{
		vcollision = true;
		image_speed = 1;
		if (hspd == 0)
		{
			sprite_index = sp_idle;
		}
		else
		{
			sprite_index = sp_run;
		}
	}
	if (hspd != 0 ) image_xscale = sign(hspd);
}

function PlayerInputs(_cont){
	if (_cont)
	{
		
		kLeft = keyboard_check(vk_left) or keyboard_check(ord("A")); 
		kRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
		kJump = false;
		if(keyboard_check_pressed(vk_space) or 
		keyboard_check_pressed(ord("W")) or mouse_check_button_pressed(mb_right)) {
			kJump = true;
			//alarm[2] = 20;
		}
		kactive = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("Q"));
		kGoBack = keyboard_check_pressed(ord("E"));
	}
	else
	{
		kLeft = 0;
		kRight = 0
		kJump = 0;
		kactive = 0;
		kGoBack = 0;
	}
}
	
//state functions
function PlayerWalk(){
	PlayerWalkAnimation();
	PlayerMovement();
}

function PlayerDeath(){
	audio_play_sound(sfxPlayerDeath,sfx,false);
	if(char == chars.player){
		instance_destroy();
	} else {
		VoodooReset();
		
	}
}
		
function PlayerHurt(){
	//remeber to add a player hurt sprite
		sprite_index = sp_hurt;
		audio_play_sound(sfxPlayerHit,sfx,false);
		control = false;
	
		if(invulerable <= 0){
			global.playerHp = max(0,global.playerHp-.5);
			flash = 5;
			invulerable = 15;
			hspd = (image_xscale*-1) * hurtspd;
			vspd += hurtspd;
		}
		if(global.playerHp <= 0 ){
			state = PlayerDeath;
			
		} 
	
		movingDist = max(0,movingDist - hurtspd);
	
		z = sin(((movingDist/distBonk)*pi))*distHeight;
		PlayerMovement();
		//change state
		if(movingDist <= 0){
			SpriteHandler(char);
			hspd = -1*sign(hspd);
			state = PlayerWalk;
			control = true;
		}
}
