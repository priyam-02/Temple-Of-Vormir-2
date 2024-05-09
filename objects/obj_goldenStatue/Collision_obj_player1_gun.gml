if (!instance_exists(obj_player2_gun)){
	
	var elapsed_time = floor((current_time - global.start_time) / 100);
	global.start_time = 0;
	if (obj_Timer.timer_running == true){
		obj_Timer.timer_running = false;
		global.seconds = obj_Timer.seconds;
		global.minutes = obj_Timer.minutes;
		instance_destroy(obj_Timer);
	}
	//show_debug_message("elapsed time:")
	//show_debug_message(elapsed_time)
	var player_score = 100;
	if(elapsed_time < 4000) {
		player_score = max(0, 4000 - elapsed_time);	
	}


	// Add the player's score and name to the list
	ds_list_add(global.high_scores, [player_score, global.team_name]);

	//// Before sorting
	//for (var i = 0; i < ds_list_size(global.high_scores); i++) {
	//    show_debug_message("Before Sort - Score: " + string(ds_list_find_value(global.high_scores, i)[0]) + ", Name: " + string(ds_list_find_value(global.high_scores, i)[1]));
	//}
	
	// Sort the high scores list by score in descending order
	var i, j;
	var temp;
	for (i = 0; i < ds_list_size(global.high_scores) - 1; i++) {
	    for (j = 0; j < ds_list_size(global.high_scores) - i - 1; j++) {
	        if (ds_list_find_value(global.high_scores, j)[0] < ds_list_find_value(global.high_scores, j + 1)[0]) {
	            // Swap the elements
	            temp = ds_list_find_value(global.high_scores, j);
	            ds_list_replace(global.high_scores, j, ds_list_find_value(global.high_scores, j + 1));
	            ds_list_replace(global.high_scores, j + 1, temp);
	        }
	    }
	}
	
	//// After sorting
	//for (var i = 0; i < ds_list_size(global.high_scores); i++) {
	//    show_debug_message("After Sort - Score: " + string(ds_list_find_value(global.high_scores, i)[0]) + ", Name: " + string(ds_list_find_value(global.high_scores, i)[1]));
	//}

	// Keep only the top 10 scores
	var listSize = ds_list_size(global.high_scores)
	if (listSize > 10) {
		ds_list_delete(global.high_scores, listSize);
	}

	var ini_file = "high_scores.ini";
	ini_open(ini_file);
	if (file_exists(ini_file)) {
    
		if (ini_key_exists("HighScores", "NumScores")) {
	        // The INI file has sections (content)
	        //show_debug_message("INI file has content, do erase.");
			ini_key_delete("HighScores", "NumScores");
	    }
	} else {
	    //show_debug_message("INI file does not exist.");
	}


	ini_write_real("HighScores", "NumScores", ds_list_size(global.high_scores));

	for (var i = 0; i < ds_list_size(global.high_scores); i++) {
	    var player_score_in_list = ds_list_find_value(global.high_scores, i)[0];
	    var player_name_in_list = ds_list_find_value(global.high_scores, i)[1];
	    ini_write_real("HighScores", "Score_" + string(i), player_score_in_list);
	    ini_write_string("HighScores", "Name_" + string(i), player_name_in_list);
	}

	ini_close();


	//instance_destroy(obj_player);


	room_goto(room_win);
	audio_stop_all();
}