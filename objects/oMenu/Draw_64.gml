

DrawSetText(c_gray,fText,fa_center,fa_top);

#region title
	var _titlex = centerX;
	var _titley = room_height/5;
	draw_text_transformed(_titlex + 5,_titley + 5,title,2,2,0);
	draw_set_color(c_white);
	draw_text_transformed(_titlex,_titley,title,2,2,0);
	
	//subtile
	draw_set_color(c_gray);
	var _subX = centerX+8;
	var _subY = _titley+MARGIN_Y+5;
	draw_text(_subX+5,_subY+5,subTitle);
	draw_set_color(c_white);
	draw_text(_subX,_subY,subTitle);
#endregion

#region menu

draw_set_color(c_gray)
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
		draw_set_color(c_white);
	} else draw_set_color(c_ltgray);
	if(menuSelect == i) _print += ">";
	_print += menu[i];
	if(menuSelect == i) _print += "<";
	draw_text(centerX,centerY+(i * MARGIN_Y),_print);
}
#endregion