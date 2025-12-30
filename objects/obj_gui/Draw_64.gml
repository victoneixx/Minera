var _gui_h = display_get_gui_width()
var _info = font_add_sprite_ext(fnt_info, global.fnt_map, 0, 0);
draw_set_font(_info);
draw_text(6, 6, "stamina");
#region Desenhado a stamina do player
var _size_bar = 200;
var _amount = (global.sta / global.sta_max)*_size_bar;
var _amount_fixed = (global.sta_max / global.sta_max)*_size_bar;
var _x1 = 6;
var _y1 = 32;

var _x2 = _x1 + _amount;
var _x2_fixed = _x1 + _amount_fixed;
var _y2 = _y1 + 24;

draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fixed, _y2, 0);
if(global.sta > 0){
	draw_set_color(make_color_rgb(255, 253, 136));
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}
draw_set_color(-1);
draw_set_halign(1);
draw_text(100, 28+8, "(" + string(global.sta) + "/" + string(global.sta_max) + ")");
#endregion
draw_set_halign(-1);

draw_set_halign(2);
draw_set_valign(0);
if(global.info){
	draw_text(_gui_h-6, 6, "str:" + string(global.xp) + "/" + string(global.xp_list[global.skl_str - 1]));
} else {
	draw_text(_gui_h-6, 6, "strx" + string(global.skl_str));
}
draw_text(_gui_h-6, 38, "loot:$" + string(global.points));
draw_set_halign(-1);
draw_set_valign(-1);

draw_set_halign(1);
draw_set_valign(1);

#region
var _t = "";
if(global.t_min > 9){_t += ""+string(global.t_min)}
if(global.t_min < 10){_t += "0"+string(global.t_min)}
_t += ":"
if(global.t_sec > 9){_t += ""+string(global.t_sec)}
if(global.t_sec < 10){_t += "0"+string(global.t_sec)}
#endregion
draw_text(_gui_h/2, 18, "time:" + _t);


draw_text(_gui_h/2, 48, "needs:$" + string(global.points_max));
draw_set_halign(-1);
draw_set_valign(-1);


draw_set_font(-1);