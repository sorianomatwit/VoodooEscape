/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(!global.gamePaused){
	event_inherited();

	if(control){
		if(kactive){
			if(state == PlayerWalk){
				alarm[5] = waitTime;
				abilityTime = waitTime;
				state = PlayerGlow;
				active = true;
			}
		}
	}
}
if(round(abilityTime/room_speed) > 0){
	abilityTime --;
}