lerpProgress += (1 - lerpProgress) / 100;
if(lerpProgress > .2) {
	textProgress += global.textspd;
}
x1 = lerp(x1,xTarget,lerpProgress);
wid = lerp(wid,widTarget,lerpProgress);


//select response/skip text/ remove text
if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("P"))){
	
	var _messageLen = string_length(msg);
	
	if(textProgress >= _messageLen){
		//removing text
		instance_destroy();
		// bring next text box
		if(instance_exists(oTextQueue)){
			with(oTextQueue) ticket--;
		} else {
			show_debug_message("done");
			if(msg != "TIMES UP")global.inCutscene = false;
			if(instance_exists(oManager)) {
				with(global.inControl) control = true;
			}
		}
	} else {
		if(textProgress > 2){
			//skip
			textProgress = _messageLen;
		}
	}
}