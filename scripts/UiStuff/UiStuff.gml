
function RoomTransition(_type, t_room){
	if(!instance_exists(oTransition)){
		with(instance_create_depth(0,0,-999,oTransition)){
				type = _type;
				target = t_room;
		}
	} else show_debug_message("Trying to transition while transition is happening!");
}

function DrawSetText(color,font,halign,valign){
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_color(color);
}



