instance_create_depth(x, y, -1, obj_esplode);
audio_play_sound(global._metalhit[irandom_range(0, 3)], 2, false, 1, 0, random_range(0.9, 1.2));
instance_destroy();