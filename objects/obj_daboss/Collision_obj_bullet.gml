_damaged = true;
alarm[2] = 30
audio_play_sound(global._metalhit[irandom_range(0, 3)], 2, false, 1, 0, random_range(0.9, 1.2));
_hp -= 1
instance_create_depth(x, y, -1, obj_esplode);
direction = point_direction(x,y,obj_esplode.x,obj_esplode.y)+180;