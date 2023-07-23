draw_set_alpha(1);
DrawSetText(c_purple,fText,fa_center,fa_top);
draw_text_transformed(_x+5,_y+5,"YOU DIED",2,2,0);
draw_set_color(c_ltgray);
draw_text_transformed(_x,_y,"YOU DIED",2,2,0);

_x += cos(get_timer() * 0.000001 * pi);
_y += sin(get_timer() * 0.000001 * pi);




draw_set_alpha(1);
DrawSetText(c_ltgrey,fText,fa_center,fa_top);
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
		draw_set_color(make_color_rgb(203,101,255))
	} else draw_set_color(c_purple);
	if(menuSelect == i) _print += ">";
	_print += menu[i];
	if(menuSelect == i) _print += "<";
	draw_text(centerX,centerY+(i * MARGIN_Y),_print);
}

draw_sprite_ext(sMask,0,_skullx,_skully,5,5,0,c_white,1);

_skully += sin(get_timer() * 0.000001 * pi);




