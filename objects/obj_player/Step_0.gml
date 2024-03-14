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
		if keyboard_check(ord("A")) && place_free(x - _collisionSpeed, y)
		{
			_moving = true
			x -= _walkspeed;
		}
		if keyboard_check(ord("W")) && place_free(x, y - _collisionSpeed)
		{
			_moving = true
			y -= _walkspeed;
		}
		if keyboard_check(ord("S")) && place_free(x, y + _collisionSpeed)
		{
			_moving = true;
			y += _walkspeed;
		}
		if x == xprevious and y == yprevious {
			_moving = false;
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
	
	if (_knock_force_x >  0) {
		_knock_force_x -= recover_speed;
	}
	if (_knock_force_x < 0) {
		_knock_force_x += recover_speed
	}
	
	if (_knock_force_y >  0) {
		_knock_force_y -= recover_speed;
	}
	if (_knock_force_y < 0) {
		_knock_force_y += recover_speed
	}
	
	if (_knock_force_x > _knockpowermax) {
		_knock_force_x = _knockpowermax
	}
	if (_knock_force_y > _knockpowermax) {
		_knock_force_y = _knockpowermax
	}
	if (_knock_force_x < -_knockpowermax) {
		_knock_force_x = -_knockpowermax
	}
	if (_knock_force_y < -_knockpowermax) {
		_knock_force_y = -_knockpowermax
	}
		
	//_knock_force_x = abs(_knock_force_x) - 0.1 * sign(_knock_force_x);
	//_knock_force_y = abs(_knock_force_y) - 0.1 * sign(_knock_force_y);
	
	if (abs(_knock_force_x) <= 0.2) {
		_knock_force_x = 0;
	}
	
	if (abs(_knock_force_y) <= 0.2) {
		_knock_force_y = 0;
	}
	
	show_debug_message(_knock_force_x);
	show_debug_message(_knock_force_y);
	x -= _knock_force_x
	y += _knock_force_y
	
}
if _hp == 0 {
	if _slowdown == true {
		obj_camshakeit.screen_shake(10, 60);
		sprite_index = spr_playerdying;
		layer_set_visible(layer_get_id("tint5"), true);
		game_set_speed(30, gamespeed_fps);
		audio_stop_sound(snd_righton);
		audio_play_sound(snd_slowdown, 3, false);
		show_debug_message("Alarm activated");
		alarm_set(0, 90);
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