if(global.hp <= 0){exit}
var _dir1 = point_direction(other.x, other.y, x, y);

var _velh = lengthdir_x(1, _dir1);
var _velv = lengthdir_y(1,_dir1);

if(!place_meeting(x + _velh, y + _velv, obj_wall)){
	x += _velh;
	y += _velv;
}