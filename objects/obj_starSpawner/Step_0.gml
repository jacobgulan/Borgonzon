/// @description Spawn star
// You can write your code in this editor
if canSpawn {
	canSpawn = false
	alarm[0] = spawnInterval
	instance_create_layer(3000, -500, spawnLayer, spawnObj)
}