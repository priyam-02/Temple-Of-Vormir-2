/// @description Insert description here
// You can write your code in this editor


if (!is_immune){
obj_p1Health.health_level -= 0.5


if (obj_p1Health.health_level = 0)
{
	room_goto(room_lose)
	audio_stop_sound(snd_walking);
	audio_play_sound(snd_deathMale, 1, false);
}
}