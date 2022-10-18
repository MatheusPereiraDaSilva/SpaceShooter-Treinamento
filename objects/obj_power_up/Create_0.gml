/// @description Insert description here
// You can write your code in this editor

chance = random(100); //Chance vai ficar entre 0 e 100
//Se o valor da chance for 90 ou mais, ele cria o power up do tiro

//Fazendo ele se mover
speed = 3;
direction = irandom(359);

//cores = choose(c_yellow, c_red, c_fuchsia, c_lime, c_aqua, c_green, c_maroon, c_navy, c_olive);

if (chance >= 90){
	cores = c_maroon;
}else if (chance >= 65 && chance < 90){
	cores = c_blue;
} else {
	cores = c_green;
}