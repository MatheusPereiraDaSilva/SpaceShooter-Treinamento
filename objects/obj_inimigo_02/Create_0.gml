/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Criando a minha variável de controle para saber se eu posso me mover para os lados
posso_me_mover_para_lado = true;

atirando = function() 
{
	if (y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro_inimigo02);
	}
}