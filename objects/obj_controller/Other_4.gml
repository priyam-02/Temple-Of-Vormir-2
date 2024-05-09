/// @description Insert description here
// You can write your code in this editor
var _width = ceil(room_width / 32)
var _height = ceil(room_height / 32)

global.mp_grid = mp_grid_create(0 ,0, _width, _height, 32, 32)

mp_grid_add_instances(global.mp_grid, obj_ground, false)





