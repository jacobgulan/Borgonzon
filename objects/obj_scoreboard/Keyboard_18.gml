/// @description Cheat codes
// You can write your code in this editor

// Pause game
if keyboard_check_pressed(ord("P")) {
	if (pause == 0) {
		pause = 1
		instance_deactivate_all(true);
	} else {
		pause = 0
		instance_activate_all()
	}
}

// Toggle invulernability
if keyboard_check_pressed(ord("Q")) {
	if obj_player.invulernable {
		obj_player.invulernable = false
	} else {
		obj_player.invulernable = true
	}
}

// Increase lives
if keyboard_check_pressed(ord("E")) {
	if global.life < 3 {
		global.life += 1
	}
}

// Increase number of stars
if keyboard_check_pressed(ord("Z")) {
	global.stars += 1
}