// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damagePlayer(damage){
	if (not obj_player.invulernable) {
		obj_player.hp -= damage
	}
	
	instance_destroy()
}