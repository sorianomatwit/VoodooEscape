function PlayerShrink(){
	sp_run = sVoodooRunShrink;
	if(control){
		sp_idle = sVoodooShrinkM;
		sp_jump = sVoodooJumpShrinkM;
	} else {
		sp_idle = sVoodooShrink;
		sp_jump = sVoodooJumpShrink;
	}
	jumpHeight = 12;
	mask_index = sp_idle;
	PlayerWalk();
}

function PlayerFloat(){
	sprite_index = sp_active;
	mask_index = sp_active;
	var _potHole = collision_rectangle(x-5,y,x+5,y+5,oSewer,false,true);
	if(instance_exists(_potHole) && _potHole.blowing){
		target = _potHole.y-_potHole.airHeight;	
	} else {
		kRight = 0;
		kLeft = 0;
		kJump = 0;
		PlayerMovement();
	}
	if(target != 0){
		if(y != target){
			lerpProgress += (1 - lerpProgress) / 200;
			y = (lerp(y,target,lerpProgress));
		}
	}
}

function PlayerGlow(){
	if(control){
		sp_jump = sVoodooJumpBMAct;
		sp_run = sVoodooRunBMAct;
		sp_idle = sVoodooBMAct;
	} else {
		sp_idle = sVoodooBAct;
		sp_jump = sVoodooJumpBAct;
	}
	PlayerWalk();
}
	
function PossesVoodoo(_Voodoo){
	global.inControl = _Voodoo;
	with(global.inControl){
		SwitchToMask(char);
	}
	global.camera.follow = _Voodoo;
	_Voodoo.control = true;
	if(instance_exists(oPlayer)){
		oPlayer.lastVoodoo = _Voodoo;
	}
}

#region wallStuff



function putOutFire(){
	deactivate = true;	
	linkedWater.spray = true;
}
	function setInvisible(){
		image_alpha = 0;
	}
	
	function setVisible(){
		image_alpha = 1;
	}

#endregion
function VoodooReset() {
	x = xstart;
	y = ystart;
	state = PlayerWalk;
	SpriteHandler(char);
	active = false;
	control = false;
	global.inControl = oPlayer;
	switch(char){
		case chars.Yvoodoo:
			isShrunk = false;
			jumpHeight = 6;
		break;
		case chars.Rvoodoo:
			lerpProgress = 0;
			target = 0;
		break;
		case chars.Bvoodoo:
			
		break;
	}
}
