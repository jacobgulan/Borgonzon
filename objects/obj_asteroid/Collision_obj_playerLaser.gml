/// @description Destory if 3 hits taken
// You can write your code in this editor
hitsTaken += 1
if (hitsTaken >= 3) {
	audio_play_sound(snd_enemy_explosion, 1, false)
	instance_create_layer(x, y, "lyr_stars", obj_explosion)
	instance_destroy()
}
instance_destroy(other)