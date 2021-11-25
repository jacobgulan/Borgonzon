/// @description Alien behavior
// You can write your code in this editor

// Fall onto the screen then start path
if (not pathStarted) {
	x -= 5
	startRange = x - path_get_x(pathRoute, pathIndStart)
	if (startRange < 4 and startRange > -4) {
		path_start(pathRoute, 3, path_action_restart, true)
		path_position = pathIndStart
		pathStarted = true
	}
}

if (canShoot) {
	canShoot = false
	instance_create_layer(x, y, "lyr_lasers", laser)
	audio_sound_pitch(snd_enemy_laser, random_range(0.9, 1.1))
	audio_play_sound(snd_enemy_laser, 1, false)
	alarm[0] = room_speed * random_range(1, 2)
}