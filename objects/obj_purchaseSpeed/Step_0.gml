/// @description Push button action
// You can write your code in this editor
image_speed = 0

if (global.speedFactor == 6) {
		sprite_index = spr_purchased
		image_xscale = 0.4
		image_yscale = 0.4
		x = 1392
}

if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
		image_index = 1
		alarm[0] = room_speed/8
	}
	
	
	// First upgrade
	if (global.stars >= 3 and global.speedFactor == 4) {
		global.stars -= 3
		global.speedFactor = 5
		exit
	}
	
	// Second upgrade
	if (global.stars >= 5 and global.speedFactor == 5) {
		global.stars -= 5
		global.speedFactor = 6
		exit
	}
}