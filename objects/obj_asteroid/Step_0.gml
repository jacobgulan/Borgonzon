/// @description Asteroid's speed
// You can write your code in this editor
hspeed -= 0.25
hspeed = -1 * clamp(hspeed, 2, 6)

// Destroy if no longer on screen
if (x < 0) {
	instance_destroy()
}