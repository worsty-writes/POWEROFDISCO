if global._hasgun == true {
	if place_meeting(x, y, obj_player) {
		audio_stop_all();
		room_goto(Room1);
	}
}