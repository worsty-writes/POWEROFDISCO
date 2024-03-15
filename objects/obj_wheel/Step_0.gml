if global._gameover == false {
	var _mouse_x = mouse_x;
	var _mouse_y = mouse_y;
	//image_angle = point_direction(x, y, _mouse_x, _mouse_y);
	image_angle += 1;
	
	if _canshoot == true {
		image_alpha = 1;
	}
	if _canshoot == false {
		image_alpha = 0.5;
	}

	if (follow != noone)
	{
		_x_to = follow.x;
		_y_to = follow.y;
	}

	x += (_x_to - x)/30;
	y += (_y_to - y)/30;

	if mouse_check_button(mb_right) {
		if (alarm[0] == -1) {
			alarm[0] = _firerate;
		}
		if _canshoot == true {
			audio_play_sound(_angel_sounds[irandom_range(0, 2)], 2, false, 1, 0, random_range(0.9, 1.2));
			var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_lilbullet);
			_bullet.direction = 0;
			_bullet.image_angle = image_angle;
			_bullet.speed = 1;
			var _bullet2 = instance_create_layer(x,y, "bulletsandbars", obj_lilbullet);
			_bullet2.direction = 72;
			_bullet2.image_angle = image_angle;
			_bullet2.speed = 1;
			var _bullet3 = instance_create_layer(x,y, "bulletsandbars", obj_lilbullet);
			_bullet3.direction = 144;
			_bullet3.image_angle = image_angle;
			_bullet3.speed = 1;
			var _bullet4 = instance_create_layer(x,y, "bulletsandbars", obj_lilbullet);
			_bullet4.direction = 216;
			_bullet4.image_angle = image_angle;
			_bullet4.speed = 1;
			var _bullet5 = instance_create_layer(x,y, "bulletsandbars", obj_lilbullet);
			_bullet5.direction = 288;
			_bullet5.image_angle = image_angle;
			_bullet5.speed = 1;
			_canshoot = false;
		}
	}
}
if global._gameover = true {
	sprite_index = spr_glowingcross2;
}