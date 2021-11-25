/// @description Draw player's score
// You can write your code in this editor
draw_set_font(fnt_big)
draw_set_halign(fa_center)
draw_text(room_width/2, room_height/2 - 300, "Your Score:")
draw_text(room_width/2, room_height/2 - 50, string(global.points))
draw_set_font(fnt_default)