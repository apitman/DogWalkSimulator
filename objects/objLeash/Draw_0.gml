/// @description Draw leash
var prevColor = draw_get_color();
draw_set_color(c_red);
var xPlayer = objPlayer.x + objPlayer.leashOffsetX;
var yPlayer = objPlayer.y + objPlayer.leashOffsetY;
var xDog = objDog.x + objDog.leashOffsetX;
var yDog = objDog.y + objDog.leashOffsetY;
draw_line_width(xPlayer, yPlayer, xDog, yDog, 2);
with (objDog) {
	var closestPlayer = instance_nearest(x, y, objPlayer);
	if (other.currentlyDrawing || (other.drawEffect && distance_to_object(closestPlayer) > leashRange)) {
		draw_set_color(c_black);
		var midpointX = (xPlayer + xDog) / 2;
		var midpointY = (yPlayer + yDog) / 2;
		var innerRadius = 10;
		var outerRadius = 30;
		var xPlayer = objPlayer.x + objPlayer.leashOffsetX;
		var yPlayer = objPlayer.y + objPlayer.leashOffsetY;
		var xDog = objDog.x + objDog.leashOffsetX;
		var yDog = objDog.y + objDog.leashOffsetY;
		draw_line_width(xPlayer - outerRadius, yPlayer, xPlayer - innerRadius, yPlayer, 2);
		draw_line_width(xPlayer + innerRadius, yPlayer, xPlayer + outerRadius, yPlayer, 2);
		draw_line_width(xPlayer, yPlayer - outerRadius, xPlayer, yPlayer - innerRadius, 2);
		draw_line_width(xPlayer, yPlayer + innerRadius, xPlayer, yPlayer + outerRadius, 2);
		draw_line_width(xPlayer - outerRadius, yPlayer - outerRadius, xPlayer - innerRadius, yPlayer - innerRadius, 2);
		draw_line_width(xPlayer + innerRadius, yPlayer - innerRadius, xPlayer + outerRadius, yPlayer - outerRadius, 2);
		draw_line_width(xPlayer + innerRadius, yPlayer + innerRadius, xPlayer + outerRadius, yPlayer + outerRadius, 2);
		draw_line_width(xPlayer - outerRadius, yPlayer + outerRadius, xPlayer - innerRadius, yPlayer + innerRadius, 2);
		
		// Draw for dog too?
		draw_line_width(xDog - outerRadius, yDog, xDog - innerRadius, yDog, 2);
		draw_line_width(xDog + innerRadius, yDog, xDog + outerRadius, yDog, 2);
		draw_line_width(xDog, yDog - outerRadius, xDog, yDog - innerRadius, 2);
		draw_line_width(xDog, yDog + innerRadius, xDog, yDog + outerRadius, 2);
		draw_line_width(xDog - outerRadius, yDog - outerRadius, xDog - innerRadius, yDog - innerRadius, 2);
		draw_line_width(xDog + innerRadius, yDog - innerRadius, xDog + outerRadius, yDog - outerRadius, 2);
		draw_line_width(xDog + innerRadius, yDog + innerRadius, xDog + outerRadius, yDog + outerRadius, 2);
		draw_line_width(xDog - outerRadius, yDog + outerRadius, xDog - innerRadius, yDog + innerRadius, 2);
		
		if (other.alarm[0] < 0) {
			other.alarm[0] = 30 * 0.2;
		}
		other.currentlyDrawing = true;
	}
}

draw_set_color(prevColor);
