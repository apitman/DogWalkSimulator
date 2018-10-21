/// @description Handle room-changing inputs

if (global.debugMode && keyboard_check_pressed(vk_escape)) {
	game_end();
}

if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

if (global.debugMode || room == room_first) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto_next();
	}
}
