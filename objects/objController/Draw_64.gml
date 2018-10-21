/// @description Draw score

if (room != room_first && room != room_last) {
	var scoreText = "Score: " + string(score);
	draw_text(100, 100, scoreText);
}
