// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transform(_do){
	if _do == true {
		audio_play_sound(snd_angel2, 2, false);
		obj_aeon.sprite_index = spr_glowingcross
		instance_create_depth(obj_aeon.x, obj_aeon.y, -1, obj_gun);
		instance_destroy(obj_aeon);
		global._canmove = true;
		global._hasgun = true;
		_do = false;
	}
}