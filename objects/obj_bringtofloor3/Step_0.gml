
if place_meeting(x, y, obj_player) {
	audio_stop_all();
	room_goto(Room3);
	audio_play_sound(snd_righton, 3, true);
}
