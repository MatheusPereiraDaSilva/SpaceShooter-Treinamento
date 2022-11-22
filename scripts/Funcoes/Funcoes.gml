// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroi_seq(){
	
	//Tentando pegar a sequência da minha layer
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	
	//Criando o boss
	instance_create_layer(928, 288, "Boss", obj_boss);
}

function cria_seq(){
	
	if (instance_exists(obj_player)){
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		
		instance_destroy(obj_player, false);
		
		if(instance_exists(obj_control)){
			
			obj_control.level_completo = true;
		}
	}
}

function cria_transicao(){
	var _transicao = instance_create_layer(0, 0, "Player", obj_transicao);
	_transicao.destino = Rm_inicio;
}