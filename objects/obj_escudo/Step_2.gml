/// @description Insert description here
// You can write your code in this editor

//Se o alvo for noone se mata

if(!alvo or !instance_exists(alvo)){
	instance_destroy();
}

x = alvo.x;
y = alvo.y;

