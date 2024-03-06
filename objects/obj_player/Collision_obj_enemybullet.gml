_hp -= 1;

show_debug_message("YOU'RE DYING.")

global._shakin = true;

if _collision == false {
	show_debug_message("We meet!")
	global._shakein = true;
	game_set_speed(45, gamespeed_fps);
	audio_sound_pitch(snd_righton, 0.75);
	_damaged = true;
	show_debug_message("Alarm activated");
	alarm_set(0, 60);
	_collision = true
}
