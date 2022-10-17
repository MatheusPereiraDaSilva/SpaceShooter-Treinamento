/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	if (obj_player.level_tiro < 5){
	hspeed *= -1;
	}
}

alarm[1] = room_speed / 3;