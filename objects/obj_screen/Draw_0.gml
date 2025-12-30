draw_set_alpha(0.6);
draw_set_color(c_black);
if(global.start_game || global.pause || global.game_over){draw_rectangle(0, 0, room_width, room_height, 0);}
draw_set_alpha(1);
draw_set_color(c_white);