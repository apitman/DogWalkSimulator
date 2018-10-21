/// drawScore()
var prevColor = draw_get_color();
var extraWidth = 0;
if (score > 999) {
	extraWidth = 20; // Just in case
}
draw_set_color(c_ltgray);
draw_roundrect(10, 10, 200 + extraWidth, 75, false); // Box
draw_set_color(c_black);
draw_roundrect(10, 10, 200 + extraWidth, 75, true); // Outline
draw_set_color(prevColor);

var scoreText = "Score: " + string(score);
draw_text(25, 25, scoreText);
