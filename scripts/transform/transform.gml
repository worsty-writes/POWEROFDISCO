// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transform(_do){
	if _do == true {
		instance_create_depth(obj_aeon.x, obj_aeon.y, -1, obj_shine2);
		instance_destroy(obj_aeon);
		instance_create_depth(obj_shine2.x, obj_shine2.y, -1, obj_transform);
		_do = false;
	}
}