/// @description Inserir descrição aqui
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

if(place_meeting(x+hspd, y, obj_wall)){
	hspd = 0;
}

if(place_meeting(x, y+vspd, obj_wall)){
	vspd = 0;
}

x += hspd;
y += vspd;