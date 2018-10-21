/// @description Handle room-changing inputs

if (global.debugMode && keyboard_check_pressed(vk_escape)) {
	game_end();
}

if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

if (keyboard_check_pressed(vk_enter)) {
	if (room == room_last) {
		game_end();
	} else if (global.debugMode || room == room_first) {
		room_goto_next();
	}
}
