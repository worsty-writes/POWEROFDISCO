if global._gameover == false {

	if _hp == 0 {
		if _deadenemy = true {
			instance_create_depth(x, y, -1, obj_deadenemy);
			audio_play_sound(_deathsound[irandom_range(0, 1)], 2, false, 1, 0, random_range(0.9, 1.2))
			_deadenemy = false;
		}
		instance_destroy();
	}

	if _modeswitch = true {
		show_debug_message("we're switching modes!");
		_mode = _random_mode[irandom_range(0, 4)];
		alarm[0] = irandom_range(120, 600);
		_modeswitch = false
	}

	if _mode == 1 or _mode == 4 or _mode == 5 {
		speed = random_range(0.5, 3);
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}
	else if _mode == 2 {
		speed = random_range(0.5, 3);
		direction = (point_direction(x, y, obj_player.x, obj_player.y)) + 180;
	}
	else if _mode == 3 {
		 speed = 0;
	}

	if _damaged == false {
		if (hspeed > 0) {
			image_xscale = -1;
			if _shooting == true {
				sprite_index = spr_enemymovingshooting;
			}
			if _shooting = false {
				sprite_index = spr_enemymoving;
			}
		}
		else if (hspeed < 0){
			image_xscale = 1;
			if _shooting == true {
				sprite_index = spr_enemymovingshooting;
			}
			if _shooting == false {
				sprite_index = spr_enemymoving;
			}
		}
		else {
			image_xscale = 1;
			if _shooting == true {
				sprite_index = spr_enemystillshoot;
			}
			if _shooting == false {
				sprite_index = spr_enemystill;
			}
		}
	}
	if _damaged == true {
		sprite_index = spr_enemydamaged
	}

	if _canshoot == true {
		alarm[1]  = irandom_range(60, 300);
		_shooting = true;
		var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_enemybullet);
		audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, 1, 0, random_range(0.9, 1.2));
		_bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
		_bullet.image_angle = image_angle;
		_bullet.speed = 7;
		_shooting = false;
		_canshoot = false;
	}

	if place_meeting(x, y, obj_bullet) or place_meeting(x, y, obj_esplode) {
		// Collide event with obj_Enemy
		var _knockback_Speed = 10; // Adjust the knockback speed as needed

		// Calculate the direction from the enemy to the player
		var _dir = point_direction(x, y, obj_player.x, obj_player.y) + 180;

		// Calculate the knockback vector
		var knockbackX = lengthdir_x(_knockback_Speed, _dir);
		var knockbackY = lengthdir_y(_knockback_Speed, _dir);

		// Apply the knockback to the player's position
		x += knockbackX;
		y += knockbackY;
	}
}
if global._gameover == true {
	speed = 0;
	sprite_index = spr_enemystill;
}