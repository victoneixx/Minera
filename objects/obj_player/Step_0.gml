/// @description Inserir descrição aqui
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

hspd = (_right - _left)*spd;
vspd = (_down - _up)*spd;

x += hspd;
y += vspd;