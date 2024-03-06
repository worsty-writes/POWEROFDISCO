// if place_meeting(x + 1, y, obj_player) or place_meeting(x - 1, y, obj_player) or place_meeting(x, y + 1, obj_player) or place_meeting(x, y - 1, obj_player) {
	//show_debug_message("We meet!")
	//global.shakein = true;
	//game_set_speed(30, gamespeed_fps);
	//if _collision == false {
		//show_debug_message("Alarm activated");
		//alarm[0] = 30;
		//_collision = true
	//}
//}

show_debug_message(alarm_get(0))

if _collision == true {
	show_debug_message("Collision is true");
}
else {
	show_debug_message("Collision is false");
}
