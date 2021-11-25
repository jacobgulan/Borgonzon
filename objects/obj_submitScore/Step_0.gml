/// @description Check if button is clicked
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id)) {
	name = get_string_async("Enter your name: ", "")
	image_index = 1
	alarm[0] = room_speed/8
}