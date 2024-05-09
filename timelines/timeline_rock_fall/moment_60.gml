
var rockX = irandom_range(room_width / 2 + 1, room_width); // Random X position across the second half width of the room
instance_create_layer(rockX, 0, "Instances", obj_rock); // Create rock at the top
timeline_position = 0; // Reset the timeline to the start