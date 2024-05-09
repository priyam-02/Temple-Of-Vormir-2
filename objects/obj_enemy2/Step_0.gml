
x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2))
y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2))

if (instance_exists(obj_player1)){
	if (distance_to_object(obj_player1) < attack_range){
		path_end();
		direction = point_direction(x, y, obj_player1.x, obj_player1.y);
		speed = 2;
		
	}
}


if (instance_exists(obj_player2)){
	if (distance_to_object(obj_player2) < attack_range){
		path_end();
		direction = point_direction(x, y, obj_player2.x, obj_player2.y);
		speed = 2;
		
	}
}


