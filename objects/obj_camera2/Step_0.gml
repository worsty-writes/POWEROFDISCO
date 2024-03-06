

if global._gameover == false {
	if (follow != noone)
	{
		_x_to = follow.x;
		_y_to = follow.y;
	}
	
	x += (_x_to - x)/15;
	y += (_y_to - y)/15;
	var _xpos = lerp(obj_player.x, mouse_x, 0.25);
	var _ypos = lerp(obj_player.y, mouse_y, 0.25);
	camera_set_view_pos(view_camera[0], (_xpos - 400), (_ypos - 225));
}
if global._gameover == true {
	follow = obj_player;
	camera_set_view_pos(view_camera[0], (obj_player.x - 400), (obj_player.y - 225));
}
