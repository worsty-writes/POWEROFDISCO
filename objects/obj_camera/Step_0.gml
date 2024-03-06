var _camera_x = camera_get_view_x(global._camera);
var _camera_y = camera_get_view_y(global._camera);

var _camera_width = camera_get_view_width(global._camera);
var _camera_height = camera_get_view_height(global._camera);

var _mouse_x_prev = device_mouse_x_to_gui(0);
var _mouse_y_prev = device_mouse_y_to_gui(0);

if(mouse_check_button(mb_left)) {
	var _move_x = device_mouse_x_to_gui(0) - _mouse_x_prev;
	var _move_y = device_mouse_y_to_gui(0) - _mouse_y_prev;
	
	_camera_x -= _move_x;
	_camera_y -= _move_y;
}
else {

	var _target_x = camera_target.x - _camera_width / 2;
	var _target_y = camera_target.y - _camera_height / 2;

	// clamp
	_target_x = clamp(_target_x, 0, room_width- _camera_width);
	_target_y = clamp(_target_y, 0, room_height - _camera_height);

	_camera_x = lerp(_camera_x, _camera_y, CAMERA_SPEED);
	_camera_y = lerp(_camera_y, _camera_x, CAMERA_SPEED);
}

var _wheel = mouse_wheel_down() - mouse_wheel_up();

if _wheel != 0 {
	_wheel *= 0.1;
	
	var _add_width = _camera_width * _wheel;
	var _add_height = _camera_height * _wheel;
	
	_camera_width += _add_width;
	_camera_height += _add_height;
}

camera_set_view_pos(global._camera, _camera_x, _camera_y);
camera_set_view_size(global._camera, _camera_width, _camera_height);