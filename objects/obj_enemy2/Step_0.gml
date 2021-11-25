/// @description Accurate shooting and faster than default player
// You can write your code in this editor

withinRange = false
displacement = 100

if (not pathStarted) {
	x -= 6
	startRange = x - path_get_x(pathRoute, pathIndStart)
	if (startRange < 7 and startRange > -7) {
		path_start(pathRoute, 6, path_action_restart, true)
		path_position = pathIndStart
		pathStarted = true
	}
}

if (instance_exists(obj_player)) displacement = y - obj_player.y

if (displacement < 32 and displacement > -32) {
	withinRange = true
}


if (canShoot and withinRange) {
	canShoot = false
	instance_create_layer(x, y, "lyr_lasers", laser)
	audio_sound_pitch(snd_enemy_laser, random_range(0.9, 1.1))
	audio_play_sound(snd_enemy_laser, 1, false)
	alarm[0] = room_speed/(4/3)
}