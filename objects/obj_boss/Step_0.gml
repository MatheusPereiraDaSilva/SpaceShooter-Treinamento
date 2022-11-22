/// @description Insert description here
// You can write your code in this editor

//Debug do estado atual
//show_debug_message(estado_atual);

//Fazendo com que o tempo de espera do tiro diminua rapidamente e execute o IF
espera_tiro--;

//Alternando os estados
//Diminuindo a espera do estado
espera_estado--;

if (keyboard_check(vk_enter)){
	vida_atual -= 10;
}

if (espera_estado <= 0){
		//Vou escolher um outro estado
		estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");
		espera_estado = delay_estado;
		criar_minions = true;
}

if(estado_atual != "estado 4"){
	sprite_index = spr_boss_combate;
}

//Iniciando o estado 1
if (estado_atual == "estado 1"){
	
	estado_01();
	
} else if (estado_atual == "estado 2"){
	
	estado_02();
	
} else if (estado_atual == "estado 3"){
	
	estado_03();
	
} else if (estado_atual == "estado 4" && vida_atual <= vida_max/2){
	sprite_index = spr_boss_escuro;
	
	if(criar_minions){
		//Criando os minions
		//Esquerda
		var _minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
	
		//Direita
		var _minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
		
		criar_minions = false;
	}
}

if (x >= 1632 || x <= 288){
	hspeed *= -1;
}
