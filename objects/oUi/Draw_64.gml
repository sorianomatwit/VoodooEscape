
//default
if(!global.gamePaused) {
draw_set_alpha(1);

#region draw health
draw_set_color(c_white);
var _playerHp = global.playerHp;
var _playerHpMax = global.playerHpMax;
var _playerHpFrac = frac(_playerHp);
_playerHp -= _playerHpFrac;

for(var i = 1; i <= _playerHpMax;i++){
	var img_i = (i > _playerHp);
	if(i == _playerHp+1){
		img_i += (_playerHpFrac > 0);
		img_i += (_playerHpFrac > 5);
	}
	draw_sprite(sMaskHealth,img_i,MARGIN_X + ((i-1)*MARGIN_Y*2),MARGIN_Y);
}
#endregion

#region Voodoo ability
	var _ability = "";
	if(instance_exists(global.inControl)){
		switch(global.inControl.char) {
			case chars.Yvoodoo:
			_ability = "SHRINK";
			break;
			case chars.Bvoodoo:
			_ability = "INVINCIBLITY";
			break;
			case chars.Rvoodoo:
			_ability = "FLOAT";
			break;
		}
	}
	DrawSetText(c_gray,fText,fa_left,fa_top);
	draw_text_transformed(MARGIN_X+5,MARGIN_Y*3+5,"ABILITY: "+_ability,1,1,0);
	draw_set_color(c_white);
	draw_text_transformed(MARGIN_X,MARGIN_Y*3,"ABILITY: "+_ability,1,1,0);
#endregion
#region timer
if(instance_exists(oManager)){
	DrawSetText(c_gray,fText,fa_left,fa_top);
	draw_text_transformed(MARGIN_X+5,MARGIN_Y*2+5,"TIME: "+string(round(oManager.levelTime/room_speed)),1,1,0);
	draw_set_color(c_white);
	draw_text_transformed(MARGIN_X,MARGIN_Y*2,"TIME: "+string(round(oManager.levelTime/room_speed)),1,1,0);
}
#endregion
} else {
	//pausemenu
		draw_set_alpha(.5);
		draw_set_color(c_dkgray)
		draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false);
	if(controlsUi == -1) {
		DrawSetText(c_gray,fText,fa_center,fa_top)
		draw_set_alpha(1);
		draw_text(RESOLUTION_W/2,RESOLUTION_H/2 - 75,">>> PAUSE <<<")
		
		#region menu

		draw_set_color(c_dkgray)
		for(var i = 0; i < array_length_1d(menu);i++){
			var _print = "";
	
			if(menuSelect == i) _print += ">";
			_print += menu[i];
			if(menuSelect == i) _print += "<";
			draw_text(centerX + 5,centerY+(i * MARGIN_Y) + 5,_print);
		}



		for(var i = 0; i < array_length_1d(menu);i++){
			var _print = "";
			if(menuSelect == i){
				draw_set_color(c_ltgray);
			} else draw_set_color(c_gray);
			if(menuSelect == i) _print += ">";
			_print += menu[i];
			if(menuSelect == i) _print += "<";
			draw_text(centerX,centerY+(i * MARGIN_Y),_print);
		}
		#endregion
	}
}