/// @description Insert description here
// You can write your code in this editor

/*
Estado 1 - Parado dando o tiro 2
Estado 2 - Movendo dando o tiro 1
Estado 3 - Intercalando entre o tiro 1 e 2

(Estado 4)
Estado especial 1 - Ficar invulnerável enquanto cria 2 minions para recuperar a vidas
*/

vida_max = 20000;
vida_atual = vida_max;

hspeed = 2;
estado_atual = choose("estado 1","estado 2","estado 3");

espera_tiro = 0;
delay_tiro = room_speed / 2;

delay_estado = room_speed * 5;
espera_estado = delay_estado;

criar_minions = true;

tiro_01 = function(){
	instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo02);
}

tiro_02 = function(_direita){
	
	if (_direita){
		var _posx = 160;
	}else {
		var _posx = -160;
	}
	
	instance_create_layer(x + _posx, y, "Tiros", obj_tiro_inimigo01);
}

estado_01 = function(){
//códigos do estado 1
//Criando o tiro 2 SE a espera do tiro for menor do que ou igual a 0
	
	if (espera_tiro <= 0){
		instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo02);
		//Atirei, vou mandar ele esperar
		espera_tiro = delay_tiro;
	}		
}

estado_02 = function(){
//códigos do estado 1
//Criando o tiro 2 SE a espera do tiro for menor do que ou igual a 0

	if (espera_tiro <= 0){
		//Tiro da direita
		tiro_02(false);
		
		//Tiro da esquerda
		tiro_02(true);
		//Atirei, vou mandar ele esperar
		espera_tiro = delay_tiro;
	}
}

estado_03 = function(){
	
	if (espera_tiro <= 0){
		
		tiro_01();
		
		espera_tiro = delay_tiro * 2;
	}
	
	if (espera_tiro == delay_tiro){
		
		tiro_02(false);
		
		tiro_02(true);
	}
}
