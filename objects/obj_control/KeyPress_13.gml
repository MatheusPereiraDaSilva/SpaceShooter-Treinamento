/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_player) == 1){
	var _transicao = instance_create_layer(0, 0, "player", obj_transicao);
	_transicao.destino = Rm_inicio;
	
	//Checando se os pontos são a maior pontuação
	if (pontos > global.max_pontos){
		global.max_pontos = pontos;
	}
}

