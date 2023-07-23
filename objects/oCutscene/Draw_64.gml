DrawSetText(c_white,fText,fa_right,fa_top);
draw_set_alpha(abs(sin(get_timer() * 0.000001 * pi)));
draw_text(RESOLUTION_W-MARGIN_X,RESOLUTION_H-MARGIN_Y,"PRESS SPACE TO CONTINUE");
draw_text(RESOLUTION_W-MARGIN_X,MARGIN_Y,"PRESS E TO SKIP");
draw_set_alpha(1);

var _Mindex = 0;
var _Windex = 0;
if(!NextDay){
	_Mindex = McSprite_index[0][Mline];
	_Windex = WitchSprite_index[0][Wline];
} else {
	_Mindex = McSprite_index[global.currentAct][Mline];
	_Windex = WitchSprite_index[global.currentAct][Wline];
}
draw_sprite(sWitch,_Mindex,wCoords[0],wCoords[1]);
draw_sprite(sWDoctor,_Windex,mcCoords[0],mcCoords[1]);
