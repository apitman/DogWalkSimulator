/// @description Run end of level code

// Zero out score after tutorial
if (room_get_name(room) == "roomTutorial") {
	score = 0;
}

// Go to next room if it exists
if (room_exists(room_next(room))) {
	room_goto_next();
}
