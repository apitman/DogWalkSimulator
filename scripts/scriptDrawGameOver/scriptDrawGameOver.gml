/// drawGameOver()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var scoreText = "Thanks for playing! Total Score: " + string(score);
draw_text(512, 184, "Herbert needs a nap after all that!");
draw_text(512, 284, scoreText);
draw_text(512, 384, "Press Enter or Escape to quit");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
