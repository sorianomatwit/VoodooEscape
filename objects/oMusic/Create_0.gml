if(audio_is_playing(menuVoodooescape)) audio_stop_sound(menuVoodooescape);
allSongNames = [
	"The Shaman",
	"Blue Jakari",
	"Mojo",
	"The Escape",
	"Witch's Brew",
	"Rai's Chill"
];
current_sound = -1;
allSongs = [
	mLevel0,
	mLevel1,
	mLevel2,
	menuVoodooescape,
	witchInterupt,
	winningendcredits
];

songloops = [
	30,
	56.047,
	38.146,
	20.454,
	20.690,
	67.765


]
songTotalLens = [
	30+9.6,
	56.058,
	38.146+6.361,
	9.513+20.454,
	16.522+20.690,
	67.765
];

centerX = RESOLUTION_W/4;
centerY = RESOLUTION_H/8;

menuSelect = 0;

menuSelected = false;