/// @description Spawn enemy
// You can write your code in this editor
if canSpawn {
	canSpawn = false
	alarm[0] = spawnInterval
	randNum = irandom_range(0, 9)
	if (randNum == 0) scr_spawnEnemy(spawnObj, pth_0)
	if (randNum == 1) scr_spawnEnemy(spawnObj, pth_1)
	if (randNum == 2) scr_spawnEnemy(spawnObj, pth_2)
	if (randNum == 3) scr_spawnEnemy(spawnObj, pth_3)
	if (randNum == 4) scr_spawnEnemy(spawnObj, pth_4)
	if (randNum == 5) scr_spawnEnemy(spawnObj, pth_5)
	if (randNum == 6) scr_spawnEnemy(spawnObj, pth_6)
	if (randNum == 7) scr_spawnEnemy(spawnObj, pth_7)
	if (randNum == 8) scr_spawnEnemy(spawnObj, pth_8)
	if (randNum == 9) scr_spawnEnemy(spawnObj, pth_9)
}