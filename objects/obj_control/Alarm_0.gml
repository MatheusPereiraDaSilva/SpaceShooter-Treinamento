/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_inimigo_01)){
	
	var repetir = level * 10;
	//Crio inimigos se os inimigos não existirem
	
	repeat(repetir){
	cria_inimigo();
	}
}

alarm[0] = room_speed * 2;

