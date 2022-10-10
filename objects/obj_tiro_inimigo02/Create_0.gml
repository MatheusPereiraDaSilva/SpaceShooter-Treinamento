/// @description Insert description here
// You can write your code in this editor

// Herdando o evento do pai
event_inherited();

//Definindo a minha velocidade
speed = 6;

// Achando a direção para a qual eu devo ir
//Indo para a direção que foi definida no direction
direction = point_direction(x, y, obj_player.x, obj_player.y);

image_angle =  direction;