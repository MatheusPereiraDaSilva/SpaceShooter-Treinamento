/// @description Iniciando
// You can write your code in this editor

//Iniciando o alarme em 1 segundo
alarm[0] = room_speed;

//Iniciando o sistema de pontos
pontos = 0;

//Iniciando o sistema de level
level = 1;

proximo_level = 100;

//Variável de controle do game over
gameover_seq = noone;

//Criando um método para ganhar pontos
//@method ganha_pontos(pontos)
ganha_pontos = function (_pontos) {
	pontos += _pontos;
	
	if(pontos > proximo_level){
		level++;
		proximo_level *= 2;
	}
}

cria_inimigo = function (){
	//Criando o inimigo

var xx = irandom_range(64, 1888);
var yy = irandom_range(-96, -1500)

//Criando inimigo com base no level
//A chance de criar um inimigo mais forte depende do level

var chance = random_range(0, level);

var inimigo = obj_inimigo_01;

//Se o valor da chance for maior do que 2
if (chance > 2){
	inimigo = obj_inimigo_02;
}

//Criando o inimigo na posição definida
instance_create_layer(xx, yy, "inimigos", inimigo);
}
