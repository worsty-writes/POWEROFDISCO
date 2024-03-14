shake_timer--;
if (shake_timer > 0) {
	var p = shake_power + (shake_timer/shake_time);
	global._shake_x = random_range(-p, p);
	global._shake_y = random_range(-p, p);
}
var _x_pos = camera_get_view_x(view_camera[0])
var _y_pos = camera_get_view_y(view_camera[0])

global._xposf = _x_pos + global._shake_x
global._yposf = _y_pos + global._shake_y