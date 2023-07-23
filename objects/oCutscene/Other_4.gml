switch(global.currentAct){
	case 0:
		PlayScene(true);
		global.currentAct = 1;
		for(var i = 0; i < array_length_1d(witchLines[global.currentAct]);i++){
			newTextBox(witchLines[global.currentAct][i],0);
		}
		newTextBox(mcLines[global.currentAct][0],2);
	break;
	case 5:
		PlayScene(true);
	break;
	}




