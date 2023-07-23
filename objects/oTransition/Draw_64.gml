/// @desc draw effect

switch(type){
	case TRANS_TYPE.slide:
		draw_set_alpha(1);
		draw_set_color(c_black);
		//top rectangle to bottom
		draw_rectangle(0,0,width,heightHalf*percent,false);
		//bottom to top rectangle
		draw_rectangle(0,height,width,height - (heightHalf*percent),false);
		
	break;
	
	case TRANS_TYPE.fade:
	
			//draw_set_color(c_black);
			draw_set_alpha(percent);
			//draw_rectangle(0,0,width,height,false);
	break;
	case TRANS_TYPE.push:
		draw_set_alpha(1);
		draw_set_color(c_black);
		draw_rectangle(width*percent,0,width,height,false);
	break;
	
}
