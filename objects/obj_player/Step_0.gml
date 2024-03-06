if _hp > 0 {	
	if global._canmove == true {
		if keyboard_check(ord("D")) {
			_isright = true;
		}
		if keyboard_check(ord("A")) {
			_isright = false;
		}
	
		if keyboard_check(ord("D")) && place_free(x + _collisionSpeed, y)
		{
			_moving = true
			x += _walkspeed;
		}
		else if keyboard_check(ord("A")) && place_free(x - _collisionSpeed, y)
		{
			_moving = true
			x -= _walkspeed;
		}
		else if keyboard_check(ord("W")) && place_free(x, y - _collisionSpeed)
		{
			_moving = true
			y -= _walkspeed;
		}
		else if keyboard_check(ord("S")) && place_free(x, y + _collisionSpeed)
		{
			_moving = true;
			y += _walkspeed;
		}
		else
		{
			_moving = false
		}
		
		if _damaged == false {
			if _moving == false
			{
				if _isright == true
				{
					image_xscale = 1;
					sprite_index = spr_playerstillright;
				}
				if _isright = false
				{
					image_xscale = 1;
					sprite_index = spr_playerstillleft;
				}

			}
			else {
				sprite_index = spr_playerleftmoonwalk
				if _isright == true
				{
					image_xscale = -1;
				}
				if _isright = false
				{
					image_xscale = 1;
				}
			}
		}
		if _damaged == true {
			sprite_index = spr_playerdamage
			if _isright == true
			{
				image_xscale = -1;
			}
			if _isright = false
			{
				image_xscale = 1;
			}
		}
	}
	else {
		if _isright == true
		{
			sprite_index = spr_playerstillright;
		}
		if _isright = false
		{
			sprite_index = spr_playerstillleft;
		}
		if keyboard_check(ord("D"))
		{
			x += 0;
		}
		if keyboard_check(ord("A"))
		{
			x -= 0;
		}
		if keyboard_check(ord("W"))
		{
			y -= 0;
		}
		if keyboard_check(ord("S"))
		{
			y += 0;
		}
	}
	if place_meeting(x, y, obj_esplode) {
		// Collide event with obj_Enemy
		var _knockback_Speed = 10; // Adjust the knockback speed as needed

		// Calculate the direction from the enemy to the player
		var _dir = point_direction(x, y, obj_esplode.x, obj_esplode.y);

		// Calculate the knockback vector
		var knockbackX = lengthdir_x(_knockback_Speed, _dir);
		var knockbackY = lengthdir_y(_knockback_Speed, _dir);

		// Apply the knockback to the player's position
		obj_player.x += knockbackX;
		obj_player.y += knockbackY;
	}
	if place_meeting(x, y, obj_enemy) {
		// Collide event with obj_Enemy
		var _knockback_Speed = 5; // Adjust the knockback speed as needed

		// Calculate the direction from the enemy to the player
		var _dir = point_direction(x, y, obj_enemy.x, obj_enemy.y) + 180;

		// Calculate the knockback vector
		var knockbackX = lengthdir_x(_knockback_Speed, _dir);
		var knockbackY = lengthdir_y(_knockback_Speed, _dir);

		// Apply the knockback to the player's position
		global._canmove = false;
		obj_player.x += knockbackX;
		obj_player.y += knockbackY;
		global._canmove = true;
	}
}
if _hp <= 0 {
	if _slowdown == true {
		global._shakein = true;
		sprite_index = spr_playerdying;
		game_set_speed(30, gamespeed_fps);
		audio_stop_sound(snd_righton);
		audio_play_sound(snd_slowdown, 3, false);
		show_debug_message("Alarm activated");
		alarm_set(0, 120);
		_slowdown = false;
	}
	global._gameover = true;
	if keyboard_check(ord("D"))
	{
		x += 0;
	}
	if keyboard_check(ord("A"))
	{
		x -= 0;
	}
	if keyboard_check(ord("W"))
	{
		y -= 0;
	}
	if keyboard_check(ord("S"))
	{
		y += 0;
	}
}