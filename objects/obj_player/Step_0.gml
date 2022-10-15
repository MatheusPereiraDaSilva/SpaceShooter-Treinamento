/// @description Insert description here
// You can write your code in this editor


var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
//y -= up * 10;
//y += down * 10;
//x -= left * 10;
//x += right * 10;

criar_escudo = keyboard_check_pressed(ord("E"));


// Positivo - negativo = então vai pro positivo
// Positivo - negativo = então vai pro negativo
y += (down - up) * 4;
y -= (up - down) * 4;
x += (right - left) * 4;
x -= (left - right) * 4;

atirando();

//Fazendo com que o level do tiro aumente sempre que eu apertar a setinha para cima

if (keyboard_check_pressed(vk_up) && level_tiro < 7){
	level_tiro += 1;
}

if (keyboard_check_pressed(vk_down) && level_tiro > 1){
	level_tiro -= 1;
}

//show_debug_message(level_tiro);


if(criar_escudo){
	var shield = instance_create_layer(x, y, "Escudo", obj_escudo);
	
	shield.alvo = id;
}

perde_vida = function(){
	
	if(vida > 1){
		vida--;
	} else{
		instance_create_layer(x, y, "Tiros", obj_explosao_inimigos);	
		instance_destroy();
	}
}
