//global._camera = camera_create();
#macro CAMERA_WIDTH 640
#macro CAMERA_HEIGHT 360
#macro CAMERA_SCALE 3
#macro CAMERA_SPEED 0.1

camera_target = obj_player;
global._camera = camera_create_view(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, 0, obj_player, 4, 4, CAMERA_WIDTH, CAMERA_HEIGHT);
global._camera = camera_create_view(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT);

camera_set_view_border(global._camera, 640, 360);
camera_set_view_target(global._camera, obj_player);
camera_set_view_speed(global._camera, 4, 4);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global._camera);

//viewport
window_set_size(CAMERA_WIDTH * CAMERA_SCALE, CAMERA_HEIGHT * CAMERA_SCALE);
surface_resize(application_surface, CAMERA_WIDTH * CAMERA_SCALE, CAMERA_HEIGHT * CAMERA_SCALE);
var _window_width = CAMERA_WIDTH * CAMERA_SCALE
var _window_height = CAMERA_HEIGHT * CAMERA_SCALE
window_set_position(display_get_width() / 2 - _window_width / 2, display_get_height()/2 - _window_height / 2);
