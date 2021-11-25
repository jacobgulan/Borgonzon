/// @description Set button's position based on room
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (room_get_name(room) == "rm_shop") {
	image_xscale = 0.5
	image_yscale = 0.5
	x = 1440
	y = 208
}

if (room_get_name(room) == "rm_yourScore") {
	x = 1560
	y = 900
}

if (room_get_name(room) == "rm_highscores") {
	x = 1560
	y = 945
}