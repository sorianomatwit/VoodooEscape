/// @desc Progress Transition
if(instance_exists(oManager) && instance_exists(global.inControl)){
	with(global.inControl){
		control = false;
	}
}
if(leading = OUT){
	percent = min(1,percent+TRANSITION_SPD);
	if(percent >= 1){ //if screen full obscured
		room_goto(target)
		leading = IN;
	}
	
} else {//leading = IN
	percent = max(0,percent -TRANSITION_SPD);
	if(percent <= 0){ //if screen fully revealed
		
		if(instance_exists(oManager) && instance_exists(global.inControl)){
			if(global.inControl){
				with(global.inControl){
					control = true;
				}
			}
		}
		show_debug_message("im done");
		instance_destroy();
	}
}

