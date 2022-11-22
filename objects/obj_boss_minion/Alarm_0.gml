/// @description Insert description here
// You can write your code in this editor

if(x > room_width / 2){

	instance_create_layer(x - sprite_width/2, y, "Tiros", obj_tiro_minion);

} else if (x < room_width / 2){
	
	instance_create_layer(x + sprite_width/2, y, "Tiros", obj_tiro_minion);
	
}

alarm[0] = room_speed;

