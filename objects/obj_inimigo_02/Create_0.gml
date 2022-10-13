/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

pontos = 10;

//Criando a minha variável de controle para saber se eu posso me mover para os lados
posso_me_mover_para_lado = true;

if (place_meeting(x, y, obj_inimigo_01)){
	//Não executando o evento destroy
	instance_destroy(id, false)
}

atirando = function() 
{
	if (y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro_inimigo02);
	}
}