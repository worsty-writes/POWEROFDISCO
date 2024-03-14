// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_player_move(_fact){
	if _fact == false {
		global._canmove = false;
	}
	if _fact == true {
		global._canmove = true;
	}
}