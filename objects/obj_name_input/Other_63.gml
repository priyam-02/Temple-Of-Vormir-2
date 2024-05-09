/// @description Insert description here
// You can write your code in this editor

if (async_load[? "id"] == async_name) {
    if (async_load[? "status"]) {
        global.team_name = async_load[? "result"];
    } else {
        global.team_name = "Team Avengers";
    }
	if (room == how_to_play){
		room_goto(Room_level1)

}else{
	room_goto(how_to_play);
}
}











