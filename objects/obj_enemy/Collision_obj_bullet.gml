show_debug_message("he's dhying.")
_damaged = true;
alarm[2] = 30
instance_create_depth(x, y, -1, obj_esplode);
_hp -= 1
direction = point_direction(x,y,obj_esplode.x,obj_esplode.y)+180;