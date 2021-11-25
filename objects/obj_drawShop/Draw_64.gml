/// @description Insert description here
// You can write your code in this editor

// Draw captions
draw_set_font(fnt_big)
draw_set_halign(fa_center)
draw_text(528, 400, "Rate of Fire")
draw_text(960, 400, "Shield")
draw_text(1392, 400, "Speed")
draw_text(960, 800, "Press Q")

// Draw star score
draw_set_halign(fa_left)
draw_sprite(spr_star, 0, 1728, 32)
draw_text(1792, 16, string(global.stars))


// Draw prices
if (global.rateOfFire < 2) {
	if (global.rateOfFire == 1) {
		draw_sprite(spr_star, 0, 348, 928)
		draw_text(404, 912, string(3))
	}

	if (global.rateOfFire == 1.5) {
		draw_sprite(spr_star, 0, 348, 928)
		draw_text(404, 912, string(5))
	}
}


if (not global.shieldUpgrade) {
	draw_sprite(spr_star, 0, 800, 928)
	draw_text(856, 912, string(8))
}


if(global.speedFactor < 6) {
	if (global.speedFactor == 4) {
		draw_sprite(spr_star, 0, 1220, 928)
		draw_text(1276, 912, string(3))
	}

	if (global.speedFactor == 5) {
		draw_sprite(spr_star, 0, 1220, 928)
		draw_text(1276, 912, string(5))
	}
}


draw_set_font(fnt_default)