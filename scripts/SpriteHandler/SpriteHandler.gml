// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpriteHandler(_character){
	switch(_character){
		case chars.player:
			
			sp_idle = sPlayer;
			sp_run = sPlayerRun;
			sp_jump = sPlayerJump;
			sp_Wslide = sPlayerWallSlide;
			sp_hurt = sPlayerHurt;
			mask_index = sp_idle;
		break;
		case chars.Yvoodoo:
			sp_idle = sVoodooY;
			sp_run = sVoodooRunY;
			sp_jump = sVoodooJumpY;
			mask_index = sp_idle;
		break;
		case chars.Rvoodoo:
			sp_idle = sVoodooR;
			sp_run = sVoodooRunR;
			sp_jump = sVoodooJumpR;
			sp_active = sVoodooLayingR;
			mask_index = sp_idle;
		break;
		case chars.Bvoodoo:
			sp_idle = sVoodooB;
			sp_run = sVoodooRunB;
			sp_jump = sVoodooJumpB;
			mask_index = sp_idle;
		break;
	}
}
function SwitchToMask(_character){
	switch(_character){
		case chars.Yvoodoo:
			sp_idle = sVoodooYM;
			sp_run = sVoodooRunYM;
			sp_jump = sVoodooJumpYM;
			mask_index = sp_idle;
		break;
		case chars.Rvoodoo:
			sp_idle = sVoodooRM;
			sp_run = sVoodooRunRM;
			sp_jump = sVoodooJumpRM;
			sp_active = sVoodooLayingRM;
			mask_index = sp_idle;
		break;
		case chars.Bvoodoo:
			sp_idle = sVoodooBM;
			sp_run = sVoodooRunBM;
			sp_jump = sVoodooJumpBM;
			mask_index = sp_idle;
		break;
	}
}

	