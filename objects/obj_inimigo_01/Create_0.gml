/// @description Insert description here
// You can write your code in this editor

vspeed = 3;
pontos = 5;
chance = 20;
shake = 20;

atirando = function() 
{
	if (y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height/2, "Tiros", obj_tiro_inimigo01);
	}
}

dropa_item = function(_chance){
	var valor = random(100);
	
	//Se o valor for menor do que a chance ele cria o power up
	if (valor < _chance){
		instance_create_layer(x, y, layer, obj_power_up);
	}
}

//Iniciando o alarme com um tempo entre 1 e 3 segundos
alarm[0] = random_range(1, 3) * room_speed;

