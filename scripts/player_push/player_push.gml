// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_push(_push){
	if _push == true {
		obj_player.y += 15;
		global._canmove = true;
		_push = false;
	}
}