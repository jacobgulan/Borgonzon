/// @description Collect start if shot by player
// You can write your code in this editor
global.stars += 1
audio_play_sound(snd_enemy_explosion, 1, false)
instance_create_layer(x, y, "lyr_stars", obj_explosion)
instance_destroy()