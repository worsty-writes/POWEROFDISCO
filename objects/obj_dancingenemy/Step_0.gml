//some fun variables 
var _distance_player = distance_to_object(obj_player);
var _hearing_distt = (_distance_player / _max_hearing_distance);
_hearing_dist = 1 - _hearing_distt;

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
			audio_play_sound(_deathsound[irandom_range(0, 1)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2))
			_deadenemy = false;
		}
		instance_destroy();
	}
	if _hp > 0 {
		if _damaged == false {
			sprite_index = spr_dancingenemy
			}
		if _damaged == true {
			sprite_index = spr_dancingenemydmg
		}
		if(point_in_rectangle(obj_player.x, obj_player.y, x-400, y-225, x+400, y+225)) {
			if _canshoot == true {
				alarm[1]  = irandom_range(60, 240);
				_shooting = true;
				var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_lilbulletenemy);
				audio_play_sound(_enemy_sounds[irandom_range(0, 2)], 2, false, _hearing_dist, 0, random_range(0.9, 1.2));
				_bullet.direction = 0;
				_bullet.image_angle = image_angle;
				_bullet.speed = 3;
				var _bullet2 = instance_create_layer(x,y, "bulletsandbars", obj_lilbulletenemy);
				_bullet2.direction = 72;
				_bullet2.image_angle = image_angle;
				_bullet2.speed = 3;
				var _bullet3 = instance_create_layer(x,y, "bulletsandbars", obj_lilbulletenemy);
				_bullet3.direction = 144;
				_bullet3.image_angle = image_angle;
				_bullet3.speed = 3;
				var _bullet4 = instance_create_layer(x,y, "bulletsandbars", obj_lilbulletenemy);
				_bullet4.direction = 216;
				_bullet4.image_angle = image_angle;
				_bullet4.speed = 3;
				var _bullet5 = instance_create_layer(x,y, "bulletsandbars", obj_lilbulletenemy);
				_bullet5.direction = 288;
				_bullet5.image_angle = image_angle;
				_bullet5.speed = 3;
				_shooting = false;
				_canshoot = false;
			}
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
	sprite_index = spr_dancingenemy;
}