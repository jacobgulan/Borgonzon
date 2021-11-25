/// @description Initialization
// You can write your code in this editor
canShoot = false
pathStarted = false
alarm[0] = room_speed * random_range(1, 2)
image_speed = 0.2

// Set start position
pathIndStart = random(1) // start index of path
x = 2000
y = path_get_y(pathRoute, pathIndStart)