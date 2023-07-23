if(!global.gamePaused){
	mouseX = mouse_x;
	mouseY = mouse_y;
}
if((instance_exists(oPlayer) && oPlayer.control)){

		var _pointDir = point_direction(x,y,mouseX,mouseY); 
		draw_set_color(c_white);
		draw_line(x,y,x+ lengthdir_x(50,_pointDir),y+lengthdir_y(50,_pointDir));
		
	}