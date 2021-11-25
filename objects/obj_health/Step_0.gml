/// @description Health's speed
// You can write your code in this editor
hspeed -= 2
hspeed = -1 * clamp(hspeed, 4, 10)

// Destroy if no longer on screen
if (x < 0) {
	instance_destroy()
}