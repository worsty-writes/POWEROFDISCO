var _bullet = instance_create_layer(x,y, "bulletsandbars", obj_esplode);
instance_find(obj_player, 0).take_knockback(obj_lilbulletenemy.x, obj_lilbulletenemy.y, 0.1);
instance_destroy(id);