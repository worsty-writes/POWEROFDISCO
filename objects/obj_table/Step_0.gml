if place_meeting(x, y, obj_player) {
	depth = 600;
}
else {
	depth = 800;
}

var _distance_player = distance_to_object(obj_player);
var _hearing_distt = (_distance_player / _max_hearing_distance);
_hearing_dist = 1 - _hearing_distt