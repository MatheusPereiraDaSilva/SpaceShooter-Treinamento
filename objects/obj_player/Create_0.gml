/// @description Insert description here
// You can write your code in this editor


espera_tiro = 5;

level_tiro = 1;

vida = 3;

atirando = function()
{
	var fire = keyboard_check(vk_space);
	if (fire && alarm[0] == -1)
	{
		//Ativando o alarme para garantir que esse código vai ter que esperar 1 segundo
		alarm[0] = espera_tiro;
		
		//Criando o objeto tiro quando o player precisa o espaço
		//E depois só atirar novamente em 1 segundo
		//Meu código de criar o tiro
		if (level_tiro == 1){
		instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
		}
		else if (level_tiro == 2){
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro2_player);
		}
		else if (level_tiro == 3){
		tiro3();
		}
		else if (level_tiro == 4){
			instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
			tiro4();
		}
		else if (level_tiro == 5){
			tiro5();
		}
		else{
			tiro4();
			tiro5();
		}
	}
}

tiro3 = function() 
{
		var tiro_1 = instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		tiro_1.hspeed = 3;
		var tiro_2 = instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		tiro_2.hspeed = -3;
}

tiro4 = function(){
		var tiro_3 = instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro2_player);
		tiro_3.hspeed = 3;
		var tiro_4 = instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro2_player);
		tiro_4.hspeed = -3;
}

tiro5 = function(){
		direcao = 75;
		repeat(3){
		var minha_bala = instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
		minha_bala.direction = direcao;
		direcao += 15;
		}
}

level_up = function(_chance){
	if(_chance >= 90){
		if(level_tiro < 7){
		//Aumentando o level do tiro
		level_tiro++;
		}
	}
}