/// @description Insert description here
// You can write your code in this editor

var playerIsOnTopOfButton = place_meeting(x,y, [obj_player1, obj_player2]);

global.door1OpenedPrevState = global.door1Opened;

if (playerIsOnTopOfButton) {
    global.door1Opened = true;
} else {
    global.door1Opened = false;
}


//if(!trapDoorOpened) {
//	if(playerIsOnTopOfButton) {
//		y += 62;
//		inst_6C0DA497.y -= 128;
//		inst_16AB230D.y -= 128;
//		inst_32948CB4.y += 128;
//		inst_33547F56.y += 128;
//		trapDoorOpened = true;
//	}
//} else {
//	if(!playerIsOnTopOfButton) {
//		y -= 62;
//		inst_6C0DA497.y += 128;
//		inst_16AB230D.y += 128;
//		inst_32948CB4.y -= 128;
//		inst_33547F56.y -= 128;
//		trapDoorOpened = false;
//	}
//}

//if(playerOnTopOfButton) {
//	if(!trapDoorOpened) {
//		y += 62;
//		inst_6C0DA497.y -= 128;
//		inst_16AB230D.y -= 128;
//		inst_32948CB4.y += 128;
//		inst_33547F56.y += 128;
//		trapDoorOpened = true;
//	}
	
//} else if(trapDoorOpened){
//	y -= 62;
//	inst_6C0DA497.y += 128;
//	inst_16AB230D.y += 128;
//	inst_32948CB4.y -= 128;
//	inst_33547F56.y -= 128;
//	trapDoorOpened = false;
//}



