if _start == true {
	if keyboard_check_released(vk_space) {
		audio_stop_all();
		room_goto(Room2);
		_start = false;
	}
}