global.mode = true;
global.ore = noone;
global.stamina_max = 8;
global.stamina = global.stamina_max;
global.str = 1;
global.atk = 1;
global.fnt_map = "abcdefjhijklmnopqrstuvwyxz" + "1234567890" + "!  #%/\()[]<>|.,-+*:;'=?_";

 function atk(){
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
				life -= 1;
				image_blend = c_red;
			}
		}
	
		if(life <= 0){
			instance_destroy(self);
		}
	}
}