
if(!global.inCutscene) {
	if(instance_exists(oPlayer) ){
		global.inControl = oPlayer//instance_create_layer(x,y,layer,oPlayer);
	
		global.camera = instance_create_layer(x,y,layer,oCam);
		global.UI = instance_create_depth(x,y,layer,oUi);
	
		
	} 
		timesUp = false;
		levelTime = 300 * room_speed;
	//show_debug_message(alarm_get(alarm[7]));
}