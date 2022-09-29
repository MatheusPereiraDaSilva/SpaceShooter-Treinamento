/// @description Insert description here
// You can write your code in this editor

atirando = function()
{
	fire = keyboard_check_pressed(vk_space);
	var fire = keyboard_check_pressed(vk_space);
	if (fire)
	{
	//Criando o objeto tiro quando o player precisa o espaço
	instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
	}
}

