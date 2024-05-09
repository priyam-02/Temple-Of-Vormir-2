/// @description Insert description here
// You can write your code in this editor

// Player 1 shoots
if (keyboard_check_pressed(vk_lshift)) { 
    var projectile = instance_create_layer(obj_player1_gun.x + obj_player1_gun.sprite_width/2, obj_player1_gun.y, "Instances", obj_projectile);

	var radianAngle = degtorad(obj_player1_gun.currentAngle); // Convert degrees to radians
    projectile.hspeed = cos(radianAngle) * 10 * -1 * obj_player1_gun.image_xscale;
    projectile.vspeed = sin(radianAngle) * 10;

	projectile.gravity = 0.1;


    obj_player1_gun.currentAngle = 180 + (obj_player1_gun.currentAngle + angleStep) mod 90;
}

// Player 2 shoots
if (keyboard_check_pressed(vk_rshift)) { 
    var projectile2 = instance_create_layer(obj_player2_gun.x + obj_player2_gun.sprite_width/2, obj_player2_gun.y, "Instances", obj_projectile);
    //projectile.direction = currentAngle;
    //projectile.hspeed = lengthdir_x(10, projectile.direction);
    //projectile.vspeed = lengthdir_y(10, projectile.direction);

	var radianAngle2 = degtorad(obj_player2_gun.currentAngle); // Convert degrees to radians
    projectile2.hspeed = cos(radianAngle2) * 10 * -1 * obj_player2_gun.image_xscale;
    projectile2.vspeed = sin(radianAngle2) * 10;

	projectile2.gravity = 0.1;


    obj_player2_gun.currentAngle = 180 + (obj_player2_gun.currentAngle + angleStep) mod 90;
}

if (!timeline_running) {
    timeline_position = 0;
    timeline_running = true;
}

// Optionally, you can also check if the timeline index is correct
if (timeline_index != timeline_rock_fall) {
    timeline_index = timeline_rock_fall;
}




//Screen Shake Effect
if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], 0, 0); 
         shake = false; 
      } 
   } 
}