/// @description Insert description here
// You can write your code in this editor

// Update the rock's position
y += vspeed;

// Destroy the rock when it goes off-screen
if (y > room_height) {
    instance_destroy();
}





