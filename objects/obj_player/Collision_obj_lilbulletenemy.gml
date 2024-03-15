_hp -= 1;

if _collision == false {
	_damaged = true;
	obj_camshakeit.screen_shake(6, 30);
	game_set_speed(30, gamespeed_fps);
	audio_sound_pitch(snd_righton, 0.75);
	audio_play_sound(_gethit[irandom_range(0, 2)], 2, false, 1, 0, random_range(0.9, 1.2));
	alarm_set(1, 30);
	_collision = true;
}

instance_destroy(obj_enemybullet);