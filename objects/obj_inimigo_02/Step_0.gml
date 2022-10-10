/// @description Insert description here
// You can write your code in this editor

//Checando se eu já passei do 1/3 da tela
if ( y > room_height/3 && posso_me_mover_para_lado == true) 
{
	//Checando de que lado da room estou
	if (x > room_width/2) {
		//Fazendo eu ir para a esquerda
		hspeed = -4;
		//Avisando que ele não pode mais se mover
		posso_me_mover_para_lado = false;
	
	} else {
		//Fazendo eu ir para a direita
		hspeed = 4;
		//Avisando que ele não pode mais se mover
		posso_me_mover_para_lado = false;
	
	}
}
