

var rockX = irandom_range(0, room_width / 2); // Random X position across the first half width of the room
instance_create_layer(rockX, 0, "Instances", obj_rock); // Create rock at the top
