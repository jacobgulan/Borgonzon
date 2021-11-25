/// @description Player behavior
// You can write your code in this editor

// Change sprite depending on if shield is active
if invulernable {
	sprite_index = spr_shield
} else {
	sprite_index = spr_player
}



// move up
if keyboard_check(vk_up) or keyboard_check(ord("W")) {
	y -= 4
	y = clamp(y, 128, 992)
	
	// Adjust boost animation
	if (invulernable) {
		obj_boostAnimaiton.y = y - 4
	} else {
		obj_boostAnimaiton.y = y - 2
	}
}

// move down
if keyboard_check(vk_down) or keyboard_check(ord("S")) {
	y += global.speedFactor
	y = clamp(y, 128, 992)
	
	// Adjust boost animation
	if (invulernable) {
		obj_boostAnimaiton.y = y
	} else {
		obj_boostAnimaiton.y = y + 2
	}
}

// Adjust boost animation
if (invulernable) {
	obj_boostAnimaiton.y = y - 2
} else {
	obj_boostAnimaiton.y = y
}


// shoot
if (keyboard_check(vk_space) & canShoot) {
	canShoot = false
	instance_create_layer(x+12, y, "lyr_lasers", obj_playerLaser)
	alarm[0] = room_speed/global.rateOfFire	// shooting rate
}

// Activate shield
if (keyboard_check_pressed(ord("Q")) and not invulernable and global.shieldUpgrade and shieldReady) {
	invulernable = true
	shieldReady = false
	alarm[1] = room_speed * 3
	alarm[2] = room_speed * 8
}

// Check if HP is 0 or below
if hp <= 0 {
	audio_sound_pitch(snd_player_explosion, 1)
	audio_play_sound(snd_player_explosion, 1, false)
	instance_create_layer(x, y, "lyr_player", obj_playerExplosion)
	global.life -= 1
	if global.life > 0 {
		x = 128
		y = room_height/2
		invulernable = true
		alarm[1] = room_speed * 3
		hp = 100
	} else {
		global.gameOver = true
		instance_destroy()
	}
		
}