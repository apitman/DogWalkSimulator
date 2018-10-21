/// @description Set speed based on input and screen position

// Input abstraction
var left = false;
var right = false;
var up = false;
var down = false;
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	left = true;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	right = true;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	up = true;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	down = true;
}

// Left/right input
if (left && !right) {
	hspeed = -1 * hvelocity;
} else if (right && !left) {
	hspeed = hvelocity;
} else {
	hspeed = 0;
}

// Up/down input
if (up && !down) {
	vspeed = -1 * vvelocity;
} else if (down && !up) {
	vspeed = vvelocity;
} else {
	vspeed = 0;
}

// Room boundaries
if (x < 0 && hspeed < 0) {
	hspeed = 0;
}
if (x >= room_width - 64 && hspeed > 0) {
	hspeed = 0;
}
if (y < 0 && vspeed < 0) {
	vspeed = 0;
}
if (y >= room_height - 64 && vspeed > 0) {
	vspeed = 0;
}
