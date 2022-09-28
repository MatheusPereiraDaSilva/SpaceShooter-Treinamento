/// @description Insert description here
// You can write your code in this editor


var up, down, left, right

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//y -= up * 10;
//y += down * 10;
//x -= left * 10;
//x += right * 10;

// Positivo - negativo = então vai pro positivo
// Positivo - negativo = então vai pro negativo
y += (down - up) * 4;
y -= (up - down) * 4;
x += (right - left) * 4;
x -= (left - right) * 4;
