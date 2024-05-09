/// @description Insert description here
// You can write your code in this editor

instance_destroy();
other.ground_health -= 4;
if(other.ground_health <= 0) {
	instance_destroy(other);
}



