event_inherited();

_voice_bank = [snd_olivesound1, snd_olivesound2, snd_olivesound3, snd_olivesound4];

myPortrait			= spr_narrator;
myVoice				= _voice_bank[irandom_range(0, 4)];
myName				= "NARRATOR";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= -1;


//-------OTHER
_readyforgun = false;

//the variable we change depending on the player's choice in dialogue