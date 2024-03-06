var _rand_x = random_range(-_shakeit_amount, _shakeit_amount);
var _rand_y = random_range(_shakeit_amount, _shake_duration);

var _start_cam_x = (lerp(obj_player.x, mouse_x, 0.25));
var _start_cam_y = (lerp(obj_player.y, mouse_y, 0.25));

//if global._shakein == true {
//	show_debug_message("ITS TRUE!")
//	camera_set_view_pos(view_camera[1], _start_cam_x + _rand_x, _start_cam_y + _rand_y);
//	alarm[0] = 120;
//}

if global._shakein == true {
	layer_set_visible(layer_get_id("ScreenShake"), true);
}

if global._shakein == false {
	layer_set_visible(layer_get_id("ScreenShake"), false);
}