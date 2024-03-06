global.does_sleep = does_sleep;
global.shaker = 0
_shaketime = 0
_shakeamount = 6

function sleep()
{
	game_set_speed(1, gamespeed_fps);
	alarm_set(0,10);
}



