_prev_mouse_x = mouse_x;
_prev_mouse_y = mouse_y;

follow = obj_player

_x_to = x;
_y_to = y;

x = follow.x;
y = follow.y;

_firerate = 90;
_remaining_firerate = 0;

_shot_random = 20
_canshoot = true;

_angel_sounds = [snd_angel1, snd_angel2, snd_angel3];

//portraits
myPortrait			= spr_aeontalking;
myVoice				= snd_voice1;
myName				= "REUEL";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= -1;