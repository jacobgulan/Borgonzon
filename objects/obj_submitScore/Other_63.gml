/// @description Store player's score and load others
// You can write your code in this editor

// listen for async dialog event
ID = ds_map_find_value(async_load, "id")

/// if the dialog is the one where we ask the player for a name
if ID == name {
	if ds_map_find_value(async_load, "status") {
		global.name = ds_map_find_value(async_load, "result")
		
		ini_open("highscores.ini")
		for (i = 0; i < 10; i++) {
			// fill the global scores array with values from the ini file. if no values are found fill with unknown
			global.score_array[i, 0] = ini_read_string(string(i), "Name", "unknown")
			global.score_array[i, 1] = ini_read_real(string(i), "Score", 0)
		}
		ini_close()
		
		// search for first spot where player's score is greater
		for (i = 0; i < 10; i++) {
			// if the player's score is greater than the spot in question
			if (global.points > global.score_array[i, 1]) {
				for (j = 9; j > i; j--) {
					global.score_array[j, 0] = global.score_array[j-1, 0]
					global.score_array[j, 1] = global.score_array[j-1, 1]
				}
				
				// now set the space to that of this player
				global.score_array[i, 0] = global.name
				global.score_array[i, 1] = global.points
				break
			}
		}
		
		// now update the ini file with this new array
		ini_open("highscores.ini")
		for (i = 0; i < 10; i++) {
			ini_write_string(string(i), "Name", global.score_array[i, 0])
			ini_write_real(string(i), "Score", global.score_array[i, 1])
		}
		ini_close()
		room_goto(rm_highscores)
	}
}