/// @description Insert description here
// You can write your code in this editor

var playerIsOnTopOfButton = place_meeting(x,y, [obj_player1, obj_player2]);

global.door2OpenedPrevState = global.door2Opened;

if (playerIsOnTopOfButton) {
    global.door2Opened = true;
} else {
    global.door2Opened = false;
}

//if(!trapDoorOpened) {
//	if(playerIsOnTopOfButton) {
//		y += 128;
//		inst_4752A69D.x += 64;
//		inst_354A1E66.x -= 64;
//		trapDoorOpened = true;
//	}
//} else {
//	if(!playerIsOnTopOfButton) {
//		y -= 128;
//		inst_4752A69D.x -= 64;
//		inst_354A1E66.x += 64;
//		trapDoorOpened = false;
//	}
//}


//if(playerIsOnTopOfButton) {
//	if(!trapDoorOpened) {
//		y += 128;
//		inst_4752A69D.x += 64;
//		inst_354A1E66.x -= 64;
//		trapDoorOpened = true;
//	}
	
//} else if(trapDoorOpened){
//	y -= 128;
//	inst_4752A69D.x -= 64;
//	inst_354A1E66.x += 64;
//	trapDoorOpened = false;
//}



