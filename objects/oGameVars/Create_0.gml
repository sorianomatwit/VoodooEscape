global.gamePaused = false;
global.playerHpMax = 3;
global.playerHp = global.playerHpMax;
global.textspd = .75
global.T_room = -1;
global.T_x = -1;
global.T_y = -1;
global.levels = [rLevel1,rLevel2,rLevel3];
global.levelMusic = [mLevel0,mLevel1,mLevel2];
global.currentAct = 0;
global.inCutscene = false;
global.currentLevel = rCutscene;
//global.gamePad = 
menuSong = menuVoodooescape;
menuMusic = audio_play_sound(menuSong,100,false);;
introLen = 9.513;
loopLen = 20.454;
total_len = introLen+loopLen;

full = false;