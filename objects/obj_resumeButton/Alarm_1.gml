/// @description Resume game
// You can write your code in this editor
instance_activate_all()
instance_destroy(obj_exitButton)
instance_destroy(obj_boss)
instance_destroy(obj_drawEndScreen)
instance_create_layer(x, y, "lyr_enemy", obj_enemy1Spawner)
instance_create_layer(x, y, "lyr_enemy", obj_enemy2Spawner)
obj_player.canShoot = true
instance_destroy()