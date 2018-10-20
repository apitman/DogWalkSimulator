/// @description Draw leash
var prevColor = draw_get_color();
draw_set_color(c_red);
draw_line_width(objPlayer.x + objPlayer.leashOffsetX, objPlayer.y + objPlayer.leashOffsetY, objDog.x + objDog.leashOffsetX, objDog.y + objDog.leashOffsetY, 2);
draw_set_color(prevColor);
