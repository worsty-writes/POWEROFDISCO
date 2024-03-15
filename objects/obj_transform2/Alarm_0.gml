instance_create_depth(obj_shine2.x, obj_shine2.y, -1, obj_wheel);
instance_destroy(obj_shine2);
instance_create_depth(obj_player.x, obj_player.y, -1, obj_yougotwheel);
global._canmove = true;
global._haswheel = true;