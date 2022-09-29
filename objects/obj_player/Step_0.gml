/// @description Insert description here
// You can write your code in this editor


var up, down, left, right, fire

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
fire = keyboard_check_pressed(vk_space);
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

if (fire)
{
	//Criando o objeto tiro quando o player precisa o espaço
	instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
}
