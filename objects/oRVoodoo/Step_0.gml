/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if(!global.gamePaused){
	event_inherited();
	
	if(control){
		if(kactive){
			if(state == PlayerWalk && !place_meeting(x+image_xscale,y,oWall)){
				lerpProgress = 0;
				target = 0;
				state = PlayerFloat;	
			} else if(state = PlayerFloat){
				state = PlayerWalk;
				lerpProgress = 0;
				target = 0;
				vspd =0;
				SpriteHandler(char);
				if(control){
					SwitchToMask(char);
				}
			}
			active = !active;
			
		}
	}
}