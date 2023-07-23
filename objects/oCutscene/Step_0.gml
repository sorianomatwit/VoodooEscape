
#region sprite movement
if(WSpeaking) {
	lerpProgressOut = 0;
	lerpProgress += (1 - lerpProgress) / percentage;

	wCoords[0] = lerp(wCoords[0],xTarget,lerpProgress);
} else {
	lerpProgressOut += (1 - lerpProgress) / percentage;
	lerpProgress = 0;
	wCoords[0] = lerp(wCoords[0], wStart,lerpProgressOut);
}

if(McSpeaking) {
	lerpProgressOut = 0;
	lerpProgress += (1 - lerpProgress) / percentage;

	mcCoords[0] = lerp(mcCoords[0],xTarget,lerpProgress);
} else {
	lerpProgressOut += (1 - lerpProgress) / percentage;
	lerpProgress = 0;
	mcCoords[0] =lerp(mcCoords[0], mcStart,lerpProgressOut);
	
}
#endregion
if(global.inCutscene){
	var _Tpos = audio_sound_get_track_position(song);
	if(_Tpos > total_len ){
		audio_sound_set_track_position(song,_Tpos-songloop);
	}
}
if(global.currentAct == 0 || global.currentAct == 1){
	
	if(instance_exists(oText) and !NextDay && oText.background == 1){
		NextDay = true;
		WSpeaking = false;
		McSpeaking = false;
	}
	#region witches
	if(instance_exists(oText) and oText.background == 0) {
		WSpeaking = true;
		#region play voicelines
		if(!NextDay){
			if(!playedW){
				currentSound = witchVoices[0][Wline];
				audio_play_sound(witchVoices[0][Wline],50,false);
				playedW = true;
				Wline++;
			}
			if(Wline + 1 > array_length(witchVoices[0])){
				Wline = 0;	
			}
		} else {
			if(!playedW){
				currentSound = witchVoices[global.currentAct][Wline];
				audio_play_sound(witchVoices[global.currentAct][Wline],50,false);
				playedW = true;
				Wline++;
			}
			if(Wline + 1 > array_length(witchVoices[global.currentAct])){
				Wline = 0;	
			}
		}
		#endregion
	} else {
		playedW = false;
		WSpeaking = false;
		
	}
	#endregion
	
	#region mc
	if(instance_exists(oText) and oText.background == 2) {
		McSpeaking = true;
		
		#region play voicelines
		if(!NextDay){
			if(!playedM){
				currentSound = mcVoices[0][Mline];
				audio_play_sound(mcVoices[0][Mline],50,false);
				playedM = true;
				Mline++;
			}
			if(Mline + 1 > array_length(mcVoices[0])){
				Mline = 0;	
			}
		} else {
			if(!playedM){
				currentSound = mcVoices[global.currentAct][Mline];
				audio_play_sound(mcVoices[global.currentAct][Mline],50,false);
				playedM = true;
				Mline++;
			}
			if(Mline + 1 > array_length(mcVoices[global.currentAct])){
				Mline = 0;	
			}
		}
		#endregion
	} else {
		playedM = false;
		McSpeaking = false;
	}
	if(!global.inCutscene){
		RoomTransition(TRANS_TYPE.slide,global.levels[0]);
	}
	#endregion
	if(keyboard_check_pressed(vk_space)){
		if(currentSound != -1) audio_stop_sound(currentSound);
	}
} else if(global.currentAct == 5){
	#region witches
	if(instance_exists(oText) and oText.background == 0) {
		WSpeaking = true;
		#region play voicelines
		if(!playedW){
			currentSound = witchVoices[global.currentAct][Wline];
			audio_play_sound(witchVoices[global.currentAct][Wline],50,false);
			playedW = true;
			Wline++;
		}
		if(Wline + 1 > array_length(witchVoices[global.currentAct])){
			Wline = 0;	
		}
		#endregion
	} else {
		playedW = false;
		WSpeaking = false;
		
	}
	#endregion
	
	#region mc
	if(instance_exists(oText) and oText.background == 2) {
		McSpeaking = true;
		
		#region play voicelines
			if(!playedM){
				currentSound = mcVoices[global.currentAct][Mline];
				audio_play_sound(mcVoices[global.currentAct][Mline],50,false);
				playedM = true;
				Mline++;
			}
			if(Mline + 1 > array_length(mcVoices[global.currentAct])){
				Mline = 0;	
			}
		#endregion
	} else {
		playedM = false;
		McSpeaking = false;
	}
	#endregion
	if(keyboard_check_pressed(vk_space)){
		if(currentSound != -1) audio_stop_sound(currentSound);
	}
	if(!global.inCutscene){
		RoomTransition(TRANS_TYPE.slide,rCredits);
	}
}else {
	
	#region witches
	if(instance_exists(oText) and oText.background == 0) {
		WSpeaking = true;
		#region play voicelines
		if(!playedW){
			currentSound = witchVoices[global.currentAct][Wline];
			audio_play_sound(witchVoices[global.currentAct][Wline],50,false);
			playedW = true;
			
			Wline++;
		}
		if(Wline + 1 > array_length(witchVoices[global.currentAct])){
			Wline = 0;	
		}
		#endregion
	} else {
		playedW = false;
		WSpeaking = false;
		
	}
	#endregion
	
	#region mc
	if(instance_exists(oText) and oText.background == 2) {
		McSpeaking = true;
		
		#region play voicelines
			if(!playedM){
				currentSound = mcVoices[global.currentAct][Mline];
				audio_play_sound(mcVoices[global.currentAct][Mline],50,false);
				playedM = true;
				Mline++;
			}
			if(Mline + 1 > array_length(mcVoices[global.currentAct])){
				Mline = 0;	
			}
		#endregion
	} else {
		playedM = false;
		McSpeaking = false;
	}
	#endregion
	if(keyboard_check_pressed(vk_space)){
		if(currentSound != -1) audio_stop_sound(currentSound);
	}
	
}