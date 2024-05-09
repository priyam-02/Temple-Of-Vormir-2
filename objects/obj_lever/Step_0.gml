var playerIsOnTopOflever = place_meeting(x,y, [obj_player1, obj_player2]);

global.bridgeOpenedPrevState = global.bridgeOpened;

if (playerIsOnTopOflever) {
    global.bridgeOpened = true;
} else {
    global.bridgeOpened = false;
}