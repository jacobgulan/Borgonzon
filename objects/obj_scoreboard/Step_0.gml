/// @description Increase score every 60 frames and cheat codes
// You can write your code in this editor
if (updateScore) {
	updateScore = false
	global.points += 10
	alarm[0] = 60
}