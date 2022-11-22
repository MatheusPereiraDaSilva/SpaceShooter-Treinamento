/// @description Insert description here
// You can write your code in this editor


espera_tiro = 5;

level_tiro = 1;

vida = 3;

escudos = 3;

meu_escudo = noone;

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
			
		instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		
		instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		
		}
		else if (level_tiro == 3){
			
		tiro3();
		
		}
		else if (level_tiro == 4){
			
		tiro3();
		
		tiro4();
		
		}
		else if (level_tiro == 5){
			
		tiro3();
		
		tiro4();
		
		tiro5();
		
		}
	}
}

tiro3 = function() 
{
		direcao1 = 75;
		
		direcao2 = 105;
		
		instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
		
		var tiro_1 = instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		//tiro_1.hspeed = 3;		
		tiro_1.direction = direcao1;		
		direcao1 += 15;
		
		var tiro_2 = instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		//tiro_2.hspeed = -3;		
		tiro_2.direction = direcao2;
		direcao2 -= 15;
}

tiro4 = function(){
	
		direcao4 = 360;
		
		var tiro_4 = instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player1_1);
		
		tiro_4.direction = direcao4;
		
		direcao4 -= 95;
		
		direcao5 = 180;
		
		var tiro_5 = instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player1_1);
		
		tiro_5.direction = direcao5;
		
		direcao5 += 95;
}

tiro5 = function(){
		direcao6 = -75;
		direcao7 = -105;
		direcao8 = -90;
		instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
		var tiro_6 = instance_create_layer(x + sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		//tiro_1.hspeed = 3;
		tiro_6.direction = direcao6;
		direcao6 += 15;
		var tiro_7 = instance_create_layer(x - sprite_width/3, y - sprite_height/3, "Tiros", obj_tiro_player);
		//tiro_2.hspeed = -3;
		tiro_7.direction = direcao7;
		direcao7 -= 15;
		var tiro_8 = instance_create_layer(x, y - sprite_height/2, "Tiros", obj_tiro_player);
		tiro_8.direction = direcao8;
		direcao8 -= 15;
}

level_up = function(_chance){
	
	if(_chance >= 90){
		
		if(level_tiro < 5){
			
		//Aumentando o level do tiro
		level_tiro++;
		}
		
	}
	
}

perde_vida = function(){
	
	if(!meu_escudo){
	
		if(vida > 1){
		
			vida--;
		
		} else{
		
			instance_create_layer(x, y, "Tiros", obj_explosao_inimigos);	
			
			instance_destroy();
		}
	}
}
