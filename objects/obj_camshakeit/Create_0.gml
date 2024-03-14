global.camerafx = self

global._shake_x = 0;
global._shake_y = 0;

global.camera_x = obj_camera2.x;
global.camera_y = obj_camera2.y;

function sleep(t, gspeed)
{
	alarm[0] = t;
	game_set_speed(gspeed, gamespeed_fps);
}

shake_power = 0;
shake_time = 0;
shake_timer = 0;

function screen_shake(_pow, _s_time) 
{
	shake_power = _pow;
	shake_time = _s_time;
	shake_timer = _s_time;
}