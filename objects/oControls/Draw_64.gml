DrawSetText(c_white,fText,fa_left,fa_top);

for(var i = 0; i < array_length_1d(keys);i++){
	var _yy = starty + i * MARGIN_Y; 
	draw_sprite(keys[i],subImage,startx - MARGIN_X,_yy);
	draw_text(startx+MARGIN_X,_yy,keyDescription[i]);
}

if (sin(get_timer() * 0.000001 * pi) < 0 ) {
	subImage = 0;
} else subImage = 1;