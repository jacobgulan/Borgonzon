/// @description Draw end screen
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(fnt_victory)
draw_text(room_width/2, room_height/2-256, "You Win!")
draw_set_font(fnt_default)  
draw_set_halign(fa_left)