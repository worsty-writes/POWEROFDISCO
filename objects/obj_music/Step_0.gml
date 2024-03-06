if global._gameover == false {
	if _music1 == true {
		audio_play_sound(snd_righton, 3, true);
		_music1 = false
	}
}
if global._gameover == true {
	if _music2 = true {
		audio_stop_all();
		audio_stop_sound(snd_righton);
		audio_play_sound(snd_gameover, 3, true);
		_music2 = false;
	}
}