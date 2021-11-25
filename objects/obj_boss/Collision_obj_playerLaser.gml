/// @description Take damage
// You can write your code in this editor
instance_destroy(other)
hp -= 1
if (hp <= 0) {
	// create explosion and victory screen
	visible = 0
	endgame = true
	audio_sound_pitch(snd_player_explosion, 0.3)
	audio_play_sound(snd_player_explosion, 1, false)
	instance_create_layer(x, y, "lyr_enemy", obj_bossExplosion)
	
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemyLaser1)
	instance_destroy(obj_enemyLaser2)
	
	alarm[0] = room_speed * 3
	
	

} else {
	// Spawn enemey when hit
	randNum = irandom_range(1, 9)
	if (hp <= 10) {
		if (randNum == 1) scr_spawnEnemy(obj_enemy2, pth_1)
		if (randNum == 2) scr_spawnEnemy(obj_enemy2, pth_2)
		if (randNum == 3) scr_spawnEnemy(obj_enemy2, pth_3)
		if (randNum == 4) scr_spawnEnemy(obj_enemy2, pth_4)
		if (randNum == 5) scr_spawnEnemy(obj_enemy2, pth_5)
		if (randNum == 6) scr_spawnEnemy(obj_enemy2, pth_6)
		if (randNum == 7) scr_spawnEnemy(obj_enemy2, pth_7)
		if (randNum == 8) scr_spawnEnemy(obj_enemy2, pth_8)
		if (randNum == 9) scr_spawnEnemy(obj_enemy2, pth_9)
	} else {
		if (randNum == 1) scr_spawnEnemy(obj_enemy1, pth_1)
		if (randNum == 2) scr_spawnEnemy(obj_enemy1, pth_2)
		if (randNum == 3) scr_spawnEnemy(obj_enemy1, pth_3)
		if (randNum == 4) scr_spawnEnemy(obj_enemy1, pth_4)
		if (randNum == 5) scr_spawnEnemy(obj_enemy1, pth_5)
		if (randNum == 6) scr_spawnEnemy(obj_enemy1, pth_6)
		if (randNum == 7) scr_spawnEnemy(obj_enemy1, pth_7)
		if (randNum == 8) scr_spawnEnemy(obj_enemy1, pth_8)
		if (randNum == 9) scr_spawnEnemy(obj_enemy1, pth_9)
	}
	
	if (hp <= 5) {
		instance_create_layer(x, y, "lyr_stars", obj_asteroid)
	}
		
	
}