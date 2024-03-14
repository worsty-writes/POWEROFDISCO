if global._dead {
	if _stupid = true {
		instance_create_layer(obj_player.x, obj_player.y - 200, "bulletsandbars", obj_partyover);
		instance_create_layer(obj_player.x, obj_player.y + 100, "bulletsandbars", obj_continue);
		_stupid = false;
	}
	if keyboard_check_pressed(vk_space) {
		audio_stop_all();
		room_goto(Room2);
	}
}