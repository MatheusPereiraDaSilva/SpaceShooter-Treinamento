/// @description Insert description here
// You can write your code in this editor

// Herdando o evento do pai
event_inherited();

//Definindo a minha velocidade
speed = 6;

if (instance_exists(obj_boss))
{
	// Achando a direção para a qual eu devo ir
	//Indo para a direção que foi definida no direction
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
}

image_angle =  direction + 90;