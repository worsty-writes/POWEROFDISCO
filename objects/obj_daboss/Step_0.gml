//some fun variables 
var _distance_player = distance_to_object(obj_player);
var _hearing_dist = (_distance_player / _max_hearing_distance);

if global._gameover == false {

	if _hp == 0 {
		if place_meeting(x, y, obj_player) {
			depth = 600;
		}
		else {
			depth = 799;
		}
		if _deadenemy = true {
			instance_create_depth(x, y, -1, obj_deadenemy);
			audio_play_sound(_deathsound[irandom_range(0, 1)], 2, false, 1, 0, random_range(0.9, 1.2))
			_deadenemy = false;
		}
		instance_destroy();
	}
	if _bossfight == true {
		if _modeswitch = true {
			if _mode < 3 {
				_mode += 1
			}
			if _mode == 3  {
				_mode = 1
			}
			_getmodey = true;
			alarm[0] = irandom_range(120, 600);
			_modeswitch = false
		}

		if _mode == 1 {
			if _getmodey = true {
				speed = random_range(0.5, 3);
				x += 100;
				_getmodey = false;
			}
			
		}
		else if _mode == 2 {
			if _getmodey = true {
				speed = random_range(0.5, 3);
				x += 100;
				_getmodey = false;
			}
		}
		else if _mode == 3 {
			 if _getmodey = true {
				speed = random_range(0.5, 3);
				y += 100;
				_getmodey = false;
			}
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
			alarm[1]  = irandom_range(60, 600);
			_shooting = true;
			var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_bulletbouncer);
			audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
			_bullet.direction = 0;
			_bullet.image_angle = image_angle;
			_bullet.speed = 3;
			var _bullet2 = instance_create_layer(x,y, "bulletsandbars", obj_bulletbouncer);
			audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
			_bullet2.direction = 72;
			_bullet2.image_angle = image_angle;
			_bullet2.speed = 3;
			var _bullet3 = instance_create_layer(x,y, "bulletsandbars", obj_bulletbouncer);
			audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
			_bullet3.direction = 144;
			_bullet3.image_angle = image_angle;
			_bullet3.speed = 3;
			var _bullet4 = instance_create_layer(x,y, "bulletsandbars", obj_bulletbouncer);
			audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
			_bullet4.direction = 216;
			_bullet4.image_angle = image_angle;
			_bullet4.speed = 3;
			var _bullet5 = instance_create_layer(x,y, "bulletsandbars", obj_bulletbouncer);
			audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
			_bullet5.direction = 288;
			_bullet5.image_angle = image_angle;
			_bullet5.speed = 3;
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
}
if global._gameover == true {
	speed = 0;
	sprite_index = spr_enemystill;
}