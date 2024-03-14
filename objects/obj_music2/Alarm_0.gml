if _music2 = true {
		audio_stop_all();
		audio_stop_sound(snd_righton);
		audio_play_sound(snd_gameover, 3, true);
		global._dead = true;
		_music2 = false;
	}