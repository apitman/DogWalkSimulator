/// @description If player is to our right, set alarm

var closestPlayer = instance_nearest(x, y, objPlayer);

if (closestPlayer.x > x && alarm[0] < 0) {
	alarm[0] = 30 * 0.1; // Run end of level code after 0.1 seconds at 30 fps
}
