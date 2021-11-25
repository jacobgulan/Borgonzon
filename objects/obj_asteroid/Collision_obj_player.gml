/// @description Hurt player and hurt self
// You can write your code in this editor
scr_damagePlayer(75)
instance_destroy()
audio_play_sound(snd_enemy_explosion, 1, false)
instance_create_layer(x, y, "lyr_enemy", obj_explosion)