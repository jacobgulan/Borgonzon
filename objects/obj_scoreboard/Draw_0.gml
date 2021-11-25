/// @description Draw healthbar and pause screen
// You can write your code in this editor
if (instance_exists(obj_player)) {
	draw_healthbar(720, 16, 1200, 48, obj_player.hp, c_black, c_red, c_lime, 0, true, true)
}

if (pause) {
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0, 0, room_width, room_height, 0)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(room_width/2, room_height/2, "Paused")
}