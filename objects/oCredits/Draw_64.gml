
DrawSetText(c_gray,fText,fa_left,fa_top);
	
var _yy = _y;
var _divisor = 2;
for(var i = 0; i < array_length_1d(credits);i++){
	var _namesOffset = 0;
	if(i - 1 != -1){
		_namesOffset = ((array_length_1d(credits[i - 1]) - 1)*MARGIN_Y/_divisor);
	}
	_yy+= _namesOffset;
	draw_text(_x+5,_yy + MARGIN_Y*i + 5,credits[i][0]);
		for(var k = 1; k < array_length_1d(credits[i]);k++){
			draw_text(_x+MARGIN_X+5,5 + _yy + MARGIN_Y*i + (MARGIN_Y/_divisor)*k,credits[i][k]);
		}
}

draw_set_color(c_white);
var _yy = _y;
for(var i = 0; i < array_length_1d(credits);i++){
	var _namesOffset = 0;
	if(i - 1 != -1){
		_namesOffset = ((array_length_1d(credits[i - 1]) - 1)*MARGIN_Y/_divisor);
	}
	_yy+= _namesOffset;
	draw_text(_x,_yy + MARGIN_Y*i,credits[i][0]);
		for(var k = 1; k < array_length_1d(credits[i]);k++){
			draw_text(_x+MARGIN_X,_yy + MARGIN_Y*i + (MARGIN_Y/_divisor)*k,credits[i][k]);
		}

}

_y += sin(get_timer() * 0.000001 * pi);