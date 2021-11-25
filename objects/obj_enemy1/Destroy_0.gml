/// @description Play noise when destroyed
// You can write your code in this editor

audio_play_sound(snd_enemy_explosion, 1, false)
instance_create_layer(x, y, "lyr_enemy", obj_explosion)
global.enemiesDestroyed += 1