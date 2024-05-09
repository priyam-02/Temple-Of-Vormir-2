/// @description Insert description here
// You can write your code in this editor

instance_destroy();

// reduce player health logic
obj_p1Health.health_level -= 10


if (obj_p1Health.health_level = 0)
{
	// write logic to show other player won the game and won golden statue
	//room_goto(room_lose)
	instance_destroy(other)
	audio_stop_sound(snd_walking);
	audio_play_sound(snd_deathMale, 1, false);
	instance_create_layer(896, 1048, "Instances",obj_ground2)
	instance_create_layer(960, 1048, "Instances",obj_ground2)
	instance_create_layer(1024, 1048, "Instances",obj_ground2)
	instance_create_layer(960, 958, "Instances",obj_goldenStatue)
}




