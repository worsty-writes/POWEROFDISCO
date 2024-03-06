_hp -= 1;

show_debug_message("YOU'RE DYING.")

global._shakin = true;

if _collision == false {
	show_debug_message("We meet!")
	global._shakein = true;
	game_set_speed(45, gamespeed_fps);
	audio_sound_pitch(snd_righton, 0.75);
	audio_play_sound(_gethit[irandom_range(0, 2)], 2, false, 1, 0, random_range(0.9, 1.2));
	_damaged = true;
	show_debug_message("Alarm activated");
	alarm_set(0, 60);
	_collision = true
}
