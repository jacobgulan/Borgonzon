/// @description Display lives, score, and stars
// You can write your code in this editor
draw_set_color(c_white)


draw_set_halign(fa_left)
draw_text(1728, 1016, "Score: " + string(global.points))

// Display game over if true 
if (global.gameOver) {
	room_goto_next()
}

// Draw lives
for (var i = 0; i < global.life; i++) {
	draw_sprite(spr_player, 0, (64 + 96 * i), 48)
}

// Draw star score
draw_sprite(spr_star, 0, 1728, 32)
draw_set_font(fnt_big)
draw_text(1792, 16, string(global.stars))
draw_set_font(fnt_default)