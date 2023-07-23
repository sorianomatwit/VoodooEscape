


function newTextBox(_message,_backGr){
	///@arg Message
	///@arg Background (index)

	var _obj;
	if(instance_exists(oText)) _obj = oTextQueue; else _obj = oText;
	
	with(instance_create_layer(0,0,"Instances",_obj)) {
		global.inCutscene = true;
		msg = _message;
		background = _backGr;
	}
	if(instance_exists(oManager)){
		with(global.inControl){
			control = false;
		}
	}
}

function PlayScene(_mcFirst){ 
	//audio_play_sound(sfxCity,30,true);
	if(_mcFirst){
		for(var i = 0; i < maxLines[global.currentAct];i++){
		//mc lines
		if(i < array_length_1d(mcLines[global.currentAct])){
			newTextBox(mcLines[global.currentAct][i],2);
		}
		//witch lines
			if(i < array_length_1d(witchLines[global.currentAct])){
				newTextBox(witchLines[global.currentAct][i],0);
			}
		}
	} else {
		for(var i = 0; i < maxLines[global.currentAct];i++){
		//witch lines
			if(i < array_length_1d(witchLines[global.currentAct])){
				newTextBox(witchLines[global.currentAct][i],0);
			}
		}
		//mc lines
		if(i < array_length_1d(mcLines[global.currentAct])){
			newTextBox(mcLines[global.currentAct][i],2);
		}
	}

	if(global.currentAct == 0) newTextBox(Narrator[global.currentAct],1);
}

function interuption(){
	inter = instance_create_layer(x,y,layer,oCutscene);
	
	with(inter){
		for(var i = 0; i < maxLines[global.currentAct];i++){
			//witch lines
			if(i < array_length_1d(witchLines[global.currentAct])){
				newTextBox(witchLines[global.currentAct][i],0);
			}
			//mc lines
			if(i < array_length_1d(mcLines[global.currentAct])){
				newTextBox(mcLines[global.currentAct][i],2);
			}
		}
	}
	
}

function endSong(_song){
	switch(_song){
		case mLevel0:
		audio_stop_sound(mLevel0);
		audio_play_sound(mLevel0Out,100,false);
		break;
		case mLevel1:
		audio_sound_gain(mLevel1,0,30);
		audio_stop_sound(mLevel1);
		break;
		case mLevel2:
		audio_stop_sound(mLevel2);
		audio_play_sound(mLevel2Out,100,false);
		break;
	}
}

