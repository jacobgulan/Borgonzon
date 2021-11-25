/// @description Boss behavior
// You can write your code in this editor
if (not endgame) {
	
	if (spawning) {
		instance_destroy(obj_asteroid)
		instance_destroy(obj_playerLaser)
		
		// Toggle viewport
		view_visible[1] = 1
		obj_player.canShoot = false
		obj_player.invulernable = true
		if (x == 1568) {
			view_visible[1] = 0
			spawning = false
			obj_player.canShoot = true
			obj_player.invulernable = false
		} else {
			x -= 1
		}

	} else {		
		// Regular behavior
		randNum = irandom_range(1, 9)
		// Spawn enemy1
		if (canSpawn1) {
			canSpawn1 = false
			if (randNum == 1) scr_spawnEnemy(obj_enemy1, pth_1)
			if (randNum == 2) scr_spawnEnemy(obj_enemy1, pth_2)
			if (randNum == 3) scr_spawnEnemy(obj_enemy1, pth_3)
			if (randNum == 4) scr_spawnEnemy(obj_enemy1, pth_4)
			if (randNum == 5) scr_spawnEnemy(obj_enemy1, pth_5)
			if (randNum == 6) scr_spawnEnemy(obj_enemy1, pth_6)
			if (randNum == 7) scr_spawnEnemy(obj_enemy1, pth_7)
			if (randNum == 8) scr_spawnEnemy(obj_enemy1, pth_8)
			if (randNum == 9) scr_spawnEnemy(obj_enemy1, pth_9)
			alarm[1] = room_speed * 4
		}
		
		// Spawn enemy2
		if (canSpawn2) {
			canSpawn2 = false
			if (randNum == 1) scr_spawnEnemy(obj_enemy2, pth_1)
			if (randNum == 2) scr_spawnEnemy(obj_enemy2, pth_2)
			if (randNum == 3) scr_spawnEnemy(obj_enemy2, pth_3)
			if (randNum == 4) scr_spawnEnemy(obj_enemy2, pth_4)
			if (randNum == 5) scr_spawnEnemy(obj_enemy2, pth_5)
			if (randNum == 6) scr_spawnEnemy(obj_enemy2, pth_6)
			if (randNum == 7) scr_spawnEnemy(obj_enemy2, pth_7)
			if (randNum == 8) scr_spawnEnemy(obj_enemy2, pth_8)
			if (randNum == 9) scr_spawnEnemy(obj_enemy2, pth_9)
			alarm[2] = room_speed * 7
		}
		
		// Spawn asteroid
		if (canSpawnAsteroid) {
			canSpawnAsteroid = false
			instance_create_layer(x, y, "lyr_stars", obj_asteroid)
			alarm[3] = room_speed * 10
		}
		
		// Spawn asteroid
		if (canShoot) {
			canShoot = false
			instance_create_layer(x, y, "lyr_lasers", obj_bossAttack)
			audio_play_sound(snd_enemy_laser2, 1, false)
			alarm[4] = room_speed * 8
		}
		
	}
} else {
	// if endgame
	if (instance_exists(obj_player)) {
		obj_player.canShoot = false
	}
}