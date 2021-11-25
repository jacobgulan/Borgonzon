/// @description Push button action
// You can write your code in this editor
image_speed = 0

if (global.shieldUpgrade) {
		sprite_index = spr_purchased
		image_xscale = 0.4
		image_yscale = 0.4
		x = 960
}

if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
		image_index = 1
		alarm[0] = room_speed/8
	}
	
	// Player has 8 stars and shield upgrade not purchased
	if (global.stars >= 8 and not global.shieldUpgrade) {
		global.stars -= 8
		global.shieldUpgrade = true
	}
	
}