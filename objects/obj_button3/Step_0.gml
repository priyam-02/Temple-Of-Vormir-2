var playerIsOnTopOfButton = place_meeting(x,y, [obj_player1, obj_player2]);

global.trapdoorOpenedPrevState = global.trapdoorOpened;

if (playerIsOnTopOfButton) {
    global.trapdoorOpened = true;
} else {
    global.trapdoorOpened = false;
}