x = obj_player.x;
y = obj_player.y + 55;

image_speed = 0;

if obj_player._hp == 5 {
	image_index = 0
}

if obj_player._hp == 4 {
	image_index = 1
}

if obj_player._hp == 3 {
	image_index = 2
}

if obj_player._hp == 2 {
	image_index = 3
}

if obj_player._hp == 1 {
	image_index = 4
}

if obj_player._hp == 0 {
	image_index = 5
}