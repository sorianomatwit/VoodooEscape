
//witchDoctor = instance_create_layer(-400,RESOLUTION_H/2,layer,oCharacterPlayer);
//witch = instance_create_layer(RESOLUTION_W+400,RESOLUTION_H/2,layer,oCharacterWitch);

#region text
mcLines = [
	[//act 0
		"Welcome to my spellcraft shop\nwhere morality is questionable and reality is pliable!\nHow can I help you?",
		"Let me guess, fillet of a fenny snake\neye of newt\ntoe of frog\nwool of bat and tongue of dog?",
		"Adder's fork and blind worm's sting\nlizard's leg, and we're actually having a sale on howlet's wing\nIs that right?",
		"...",
		"That will be $23.99 and two immortal souls, please"
	],
	[//act 1
		"Damm you got some Nice bars\nDo you have a soundcloud?"
	],
	[//act 2
		"I can refund your money",
		"Well, as long as the eye of newt is in good condition\nAre the pupils still visible?",
		"No deal."
	],
	[//act 3
		"I never cared for meta humor"
	],
	[//act 4
		"How much longer is this gonna go on\n I have a store to tend to"
	],
	[//act 5
		"Alright Witch, this has gone on long enough\nI've passed your trials, proved my worth, and missed therapy\nLet me out of here!",
		"While we're on the subject\nlet me see your cauldron and check out this spell you brewed.",
		"Just give me the cauldron.",
		"Yes, it's just as I thought\nI've seen this many times before\nYou stirred it backwards.",
		"Yeah.",
		"Coleslaw.",
		"Shop is close due to customer complaints\nI'm going to take a nap"
	]
]

witchLines = [
	[//act 0
		"Greetings there, humble Witch Doctor \nI am but a spell concoctor\nFor my vile witch's brew-",
		"Hey, hold on-",
		"No.",
		"Yes"
	],
	[ //act 1
		"You sold a spell to this upstart Witchy\nBut the eye of newt made my thighs itchy!",
		"For your incompotent sales technique\nI'll cast a spell and make you weak",
		"Prove that you are a worthy man\nAnd pass these tests the best you can!"
	],
	[//act 2
		"Blast you and your acts of skill\nWe'll yet see if you've got the will!",
		"Really?!",
		"No.",
		"The greatest enemy of the dark arts! Lax consumer advocacy."
	],
	[//act 3
		"I would cuss you out if I was able\nIronically real curses are off the table.\nThere are many naughty words inside of me!\nBut alas this game is rated E.",
		"Damn you"
	],
	[//act 4
		"I'll admit, you are better than you seem\nYou are reaching the hardest stages of my hellish dream!"
	],
	[//act 5
		"Very well you tricky fool\nBut don't cross me again\nLest you incur a wrath twice as cruel!",
		"Dare you imply that the failed spell was my doing?",
		"Fine! Here.",
		"Oh.",
		"Well\n What did I create then?",
		"I see\n Well, might I purchase ingredients for a new spell?"
	]
]
Narrator = [
	"The Next Day"
]
maxLines = [5,4,4,2,1,7];
#endregion

//PlayerFirst = [true,false,false,false,true];

#region voice lines
mcVoices = [
	[
		mcVoice01,
		mcVoice02,
		mcVoice03,
		mcVoice04,
		mcVoice05,
	],
	[
		mcVoice06
	],
	[
		mcVoice07,
		mcVoice08,
		mcVoice09
	],
	[
		mcVoice10
	],
	[
		mcVoice11
	],
	[
		mcVoice12,
		mcVoice13,
		mcVoice14,
		mcVoice15,
		mcVoice16,
		mcVoice17,
		mcVoice18
	]
]
playedM = false;
Mline = 0;

witchVoices = [
	[
		witchVoice01,
		witchVoice02,
		witchVoice03,
		witchVoice04
	],
	[
		witchVoice05,
		witchVoice06,
		witchVoice07
	],
	[
		witchVoice08,
		witchVoice09,
		witchVoice10,
		witchVoice11,
	],
	[
		witchVoice12,
		witchVoice13
	],
	[
		witchVoice14
	],
	[
		witchVoice15,
		witchVoice16,
		witchVoice17,
		witchVoice18,
		witchVoice19,
		witchVoice20
	]
]

Wline = 0;
NextDay = false;
playedW = false;

currentSound = -1;

#endregion

#region spriteWork
	McSprite_index = [
	[0,0,0,1,0],
	[1,1,1],
	[1,0,0,1],
	[1,1],
	[1],
	[1,1,1,0,0,0,0]
	];
	WitchSprite_index = [
	[0,1,1,0],
	[1,1,1],
	[1,0,0,1],
	[1],
	[0],
	[0,0,0,1,1,1]
	];
	WSpeaking = false;
	McSpeaking = false;
	xTarget = RESOLUTION_W/2;
	mcStart = -500;
	wStart = RESOLUTION_W+400;
	lerpProgress = 0;
	lerpProgressOut = 0;
	mcCoords = [mcStart,RESOLUTION_H * (3/4)];
	wCoords = [wStart,RESOLUTION_H * (3/4)];
	percentage = 50;
	if(global.currentAct > 1) {
		NextDay = true;
	}
#endregion

#region music work

	song = audio_play_sound(witchInterupt,30,false);;
	songloop = 16.522;
	songintro = 20.690;
	total_len = songintro+songloop;
#endregion