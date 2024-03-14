

if global._gameover == false {
	if (follow != noone)
	{
		_x_to = follow.x;
		_y_to = follow.y;
	}

	var _xpos = lerp(obj_player.x, mouse_x, 0.25);
	var _ypos = lerp(obj_player.y, mouse_y, 0.25);
	
	global._xposf = _xpos - 400;
	global._yposf = _ypos - 225;

	camera_set_view_pos(view_camera[0], (global._xposf + global._shake_x), (global._yposf + global._shake_y));
	
}
if global._gameover == true {
	follow = obj_player;
	camera_set_view_pos(view_camera[0], (obj_player.x - 400), (obj_player.y - 225));
}
