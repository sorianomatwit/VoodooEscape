/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(!global.gamePaused){
	event_inherited();
	if(kactive){
		if(state == PlayerShrink && !place_meeting(x-5,y,oWall) && !place_meeting(x+5,y,oWall)
		&& !place_meeting(x,y-25,oWall) && !place_meeting(x,y-25,oDoor)) {
			isShrunk = false;
			if(control) {
				SwitchToMask(char);
			} else SpriteHandler(char);
			state = PlayerWalk;
			jumpHeight = 6;
		} else if(state = PlayerWalk){
			isShrunk = true;
			state = PlayerShrink;
		}
		active = !active;
	}
}