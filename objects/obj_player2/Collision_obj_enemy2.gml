if (!is_immune){
obj_p2Health.health_level -= 0.5


if (obj_p2Health.health_level = 0)
{
	room_goto(room_lose)
	audio_stop_sound(snd_walking);
	audio_play_sound(snd_deathFemale, 1, false);
}
}