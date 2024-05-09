/// @description Insert description here
// You can write your code in this editor
x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2))
y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2))




if (keyboard_check(vk_left) and (!instance_place(x-m_speed, y, obj_ground) or !instance_place(x-m_speed, y, obj_ground2))) {
    x += -m_speed;
    sprite_index = spr_runningp2;
    image_xscale = -1;
}
else if (keyboard_check(vk_right) and (!instance_place(x-m_speed, y, obj_ground) or !instance_place(x-m_speed, y, obj_ground2))) {
    sprite_index = spr_runningp2;
    x += m_speed
    image_xscale = 1;

        //if (obj_Timer.timer_running == false){
        //    obj_Timer.timer_running = true;

        //}
}else{
    sprite_index = spr_player2;
    }

if (keyboard_check(vk_up)){
	//audio_stop_sound(snd_walking);
	//walking_sound_playing = false;
    //sprite_index = spr_jumping;
    show_debug_message("jumping...")
    if (instance_place(x, y+1, obj_ground) or instance_place(x, y+1, obj_ground2)){
            vspeed = jump_height;

    }
}

if (instance_place(x, y+1, obj_ground) or instance_place(x, y+1, obj_ground2)){
    gravity = 0;

} else {
    gravity = 0.25;

}

var maxSpd = 8;

	if (vspeed > maxSpd){
		vspeed = min(vspeed, maxSpd);
	}

if (keyboard_check(vk_down)){
vspeed += 3	
}

//if (place_meeting(x, y+3, obj_ground))
//{
//	y = y - 1	
//}
//while(instance_place(x, y+1, obj_ground))
//{
//	y--	
//}

//if(place_meeting(x, y+m_speed, obj_ground)) {
//    while(!place_meeting(x, y+sign(m_speed), obj_ground))
//        y += sign(m_speed);
//    m_speed = 0;
//}

if ((keyboard_check(vk_left)) and !walking_sound_playing) {

    audio_play_sound(snd_walking, 1, true);
    walking_sound_playing = true;
} 

if((keyboard_check_released(vk_left))){
	audio_stop_sound(snd_walking);
	walking_sound_playing = false;
}

if ((keyboard_check(vk_right)) and !walking_sound_playing) {

    audio_play_sound(snd_walking, 1, true);
    walking_sound_playing = true;
} 

if((keyboard_check_released(vk_right))){
	audio_stop_sound(snd_walking);
	walking_sound_playing = false;
}