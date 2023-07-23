
draw_set_alpha(abs(sin(get_timer() * 0.000001 * pi)));
DrawSetText(c_white,fText,fa_right,fa_top);
draw_text(RESOLUTION_W - MARGIN_X,MARGIN_Y,"Select Song with E");
draw_set_alpha(1);


DrawSetText(c_gray,fText,fa_center,fa_top)
for( var i = 0; i < array_length(allSongNames);i++){
	
	var _xx = RESOLUTION_W/2;
	var _yy = centerY + MARGIN_Y*i*2 + 30;
	
	draw_set_color(c_white);
	draw_sprite_stretched(sBoxes,1,centerX,centerY + MARGIN_Y*2*i ,centerX*2,80);
	
	#region background
	var _bprint = "";
	if(menuSelect == i){
		_bprint += ">>>"
	}
	_bprint += allSongNames[i];
	draw_set_color(c_gray);
	
	if(menuSelect == i){
		_bprint += "<<<"
	}
	draw_text(_xx+5,_yy+5,allSongNames[i]);
	#endregion
	
	#region text
	var _print = "";
	if(menuSelect == i){
		_print += ">>>"
		draw_set_color(c_white);
		if(menuSelected) draw_set_color(c_red);
	} else draw_set_color(c_ltgray);
	_print += allSongNames[i];
	if(menuSelect == i){
		_print += "<<<"
	}
	draw_text(_xx,_yy,_print);
	#endregion
	
}