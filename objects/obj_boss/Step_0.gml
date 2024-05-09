/// @description Insert description here
// You can write your code in this editor
//var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player1.x, obj_player1.y,choose(0,1))

//if (_found_player)
//{
//	path_start(path, 2, path_action_stop, false)
//}

x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2))
y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2))

mp_potential_step_object(obj_player1.x, obj_player1.y, 2, obj_ground) 

mp_potential_step_object(obj_player2.x, obj_player2.y, 2, obj_ground)




