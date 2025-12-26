var _txt = font_add_sprite_ext(fnt_text, global.fnt_map, 0, 0);
draw_set_font(_txt);
#region Desenhado a barra de stamina
var _amount_sta = (global.sta / global.sta_max)*200;
var _amount_fixed_sta = (global.sta_max / global.sta_max)*200;
var _x1 = 4;
var _y1 = 4;

var _x2 = _x1 + _amount_sta;
var _x2_fixed = _x1 + _amount_fixed_sta;
var _y2 = _y1 + 24;

draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fixed, _y2, 0);

draw_set_color(make_color_rgb(246, 255, 125));
if(global.sta > 0){
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}
draw_set_color(c_white);
#endregion
#region Desenhado a barra de vida
var _amount_hp = (global.hp / global.hp_max)*200;
var _amount_fixed_hp = (global.hp_max / global.hp_max)*200;
var _x4 = 4;
var _y4 = 34;

var _x5 = _x4 + _amount_hp;
var _x5_fixed = _x4 + _amount_fixed_hp;
var _y5 = _y4 + 24;

draw_set_color(c_gray);
draw_rectangle(_x4, _y4, _x5_fixed, _y5, 0);
draw_set_color(make_color_rgb(246, 4, 74));
if(global.hp > 0){
	draw_rectangle(_x4, _y4, _x5, _y5, 0);
}
draw_set_color(c_white);
#endregion

draw_set_halign(1);
if(global.info){
	draw_text(100, 4*2, "stamina");
	draw_text(100, 38, "life");
} else{
	draw_text(100, 4*2, "(" + string(global.sta) + "/" + string(global.sta_max) + ")");
	draw_text(100, 38, "(" + string(global.hp) + "/" + string(global.hp_max) + ")");
}
draw_set_halign(-1);
draw_set_font(-1);
