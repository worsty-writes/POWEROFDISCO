var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_esplode);
_bullet.direction = point_direction(x, y, obj_player.x, obj_player.y)
_bullet.image_angle = image_angle;
_bullet.speed = 5;
instance_destroy();