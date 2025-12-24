var _colid = point_distance(x, y, obj_player.x, obj_player.y) < 50;
var _dir_player = point_direction(x, y, obj_player.x, obj_player.y);
image_blend = c_white;
if(_colid){
	hspd = lengthdir_x(spd, _dir_player);
	vspd = lengthdir_y(spd, _dir_player);
	image_speed = 0.1;
} else{
	image_speed = 0;
	controls_state();
	if (place_meeting(x + hspd, y + vspd, obj_wall)) {
		state = "idle";
		time_stop = time_daley;
		destination_x = x + random_range(-length, length);
		destination_y = y + random_range(-length, length);
	}
}
move_and_collide(hspd, vspd, obj_wall);

var _enter = position_meeting(mouse_x, mouse_y, self);
if(global.mode == false){
	if(_enter){
		target = true
	} else{
		target = false;
	}
	
	var _pitch = random_range(0.5, 1.5);
	if(target){
		if(mouse_check_button_pressed(mb_left)){
			audio_play_sound(snd_hit, 0, 0, 1, 0, _pitch);
			life -= random_range(0.1, 1.1);
			image_blend = c_red;
		}
	}
	
	if(life <= 0){
		instance_destroy(self);
	}
}
