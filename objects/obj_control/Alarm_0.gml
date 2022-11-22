/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_inimigo_01)){
	
	var repetir = level * 10;
	//Crio inimigos se os inimigos não existirem
	
	if (level < 10){	
		repeat(repetir){
			
			cria_inimigo();
			
		} 
	} else if (level >= 10 && boss_ativo == false){	
		layer_sequence_create("Boss_entrada", 960, 416, sq_boss_entrando);		
		boss_ativo = true;
	}
		
}

alarm[0] = room_speed * 2;

