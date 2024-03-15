instance_create_depth(obj_shine2.x, obj_shine2.y, -1, obj_gun);
instance_destroy(obj_shine2);
instance_create_depth(obj_player.x, obj_player.y, -1, obj_yougotgun);
global._canmove = true;
global._hasgun = true;