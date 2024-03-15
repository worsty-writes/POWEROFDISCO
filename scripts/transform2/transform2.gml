// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transform2(_do){
	if _do == true {
		instance_create_depth(obj_aeon2.x, obj_aeon2.y, -1, obj_shine2);
		instance_destroy(obj_aeon2);
		instance_create_depth(obj_shine2.x, obj_shine2.y, -1, obj_transform2);
		_do = false;
	}
}