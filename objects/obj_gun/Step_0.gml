if global._gameover == false {
	var _mouse_x = mouse_x;
	var _mouse_y = mouse_y;
	image_angle = point_direction(x, y, _mouse_x, _mouse_y);

	if (mouse_x > obj_gun.x) {
		sprite_index = spr_gun;
	}
	else {
		sprite_index = spr_gunupsidedowm;
	}

	if (follow != noone)
	{
		_x_to = follow.x;
		_y_to = follow.y;
	}

	x += (_x_to - x)/30;
	y += (_y_to - y)/30;

	if mouse_check_button(mb_left) {
		if (alarm[0] == -1) {
			alarm[0] = _firerate;
		}
		if _canshoot == true {
			var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_bullet);
			var _shadow = instance_create_depth(obj_gun.x +32, obj_gun.y, +1, obj_shadow);
			instance_create_depth(x, y, -1, obj_shine);
			instance_create_depth(x, y, -1, obj_fire);
			global._shakein = true
			alarm[1] = 30;
			audio_play_sound(_angel_sounds[irandom_range(0, 2)], 2, false, 1, 0, random_range(0.9, 1.2));
			_bullet.direction = point_direction(x, y, mouse_x + random_range(-_shot_random, _shot_random), mouse_y + random_range(-_shot_random, _shot_random));
			_bullet.image_angle = image_angle;
			_bullet.speed = 10;
			_shadow.direction = point_direction(x, y, mouse_x + random_range(-_shot_random, _shot_random), mouse_y + random_range(-_shot_random, _shot_random));
			_shadow.speed = 10;
			_canshoot = false
		}
	}
}
if global._gameover = true {
	sprite_index = spr_glowingcross2;
}