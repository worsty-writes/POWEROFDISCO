if global._gameover = true {
	layer_set_visible(layer_get_id("tint1"), false);
	layer_set_visible(layer_get_id("tint2"), false);
	layer_set_visible(layer_get_id("tint3"), false);
	layer_set_visible(layer_get_id("tint4"), false);
	instance_destroy();
}