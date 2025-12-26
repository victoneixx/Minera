spd = 1;
hspd = 0;
vspd = 0;
target = false;
life = 10;
atk_pl = true;

length = 10;
state = "idle";
destination_x = x + random_range(-length, length);
destination_y = y + random_range(-length, length);
dir = 0;
time_daley = 60;
time_stop = time_daley;

controls_state = function(){
	switch(state){
		case "idle": 
			hspd = 0; 
			vspd = 0; 
			
			time_stop--;
			if(time_stop <= 0){
				image_index = 1;
				destination_x = x + random_range(-length, length);
				destination_y = y + random_range(-length, length);
				state = "walk"
				time_stop = time_daley;
			}
			
		break;
		
		case "walk":
			dir = point_direction(x, y, destination_x, destination_y);
			
			hspd = lengthdir_x(spd, dir);
			vspd = lengthdir_y(spd, dir);
			
			var _dist = point_distance(x, y, destination_x, destination_y);
			if(_dist < spd*3){
				state = "idle";
				image_index = 0;
			}
			
		break;
	}
}