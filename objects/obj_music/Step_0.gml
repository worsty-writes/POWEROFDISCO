if global._gameover == false {
	if _music1 == true {
		audio_play_sound(snd_righton, 3, true);
		_music1 = false
	}
}
if global._gameover == true {
	if _soundthealarm = true {
		alarm[0] = 90;
		_soundthealarm = false;
	}
}