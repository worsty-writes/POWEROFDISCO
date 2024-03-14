global._playerx = x;
global._playery = y;

_moving = false;

_facing = 0;

_walkspeed = 6;

_collisionSpeed = _walkspeed + 2;

global._canmove = true

global._candamage = false

_isright = false

_hp = 5;

_collision = false;

global._gameover = false;

_slowdown = true;

_damaged = false;

_gethit = [snd_bullethitplayer1, snd_bullethitplayer2, snd_bullethitplayer3];

//dialogue

spd = 2;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_disco;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "ABALAM";

myPortraitTalk		= -1;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_discowaiting;


//knockback function

_knock_force_x = 0;
_knock_force_y = 0;
_knockpowermax = 5;

recover_speed = 0.1;

function take_knockback(_in_x, _in_y, _multiplier) {
	var final_x = x - _in_x;
	var final_y = y - _in_y;
	_in_x *= 0.1;
	_in_y *= 0.1;
	show_debug_message("activating this code!");
	
	_knock_force_x = final_x;
	_knock_force_y = final_y;
}