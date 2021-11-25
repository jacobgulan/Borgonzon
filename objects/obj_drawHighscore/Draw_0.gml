/// @description Draw the highscores
// You can write your code in this editor
xVal = room_width/2 - 150
yVal = 100

for (i = 0; i < 10; i++) {
	yVal += 50
	draw_text(xVal, yVal, string(global.score_array[i, 0]))
	draw_text(xVal + 200, yVal, string(global.score_array[i, 1]))
}