// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawnEnemy(enemyType, pathType) {
	spawned = instance_create_layer(-500, - 500, "lyr_enemy", enemyType)
	spawned.pathRoute = pathType
	spawned.x = 2000
	spawned.y = path_get_y(spawned.pathRoute, spawned.pathIndStart)
}