/// @description Draw score

if (room != roomMainMenu && room != roomEnd) {
	scriptDrawScore();
}

if (room == roomMainMenu) {
	scriptDrawMainMenu();
}

if (room == roomEnd) {
	scriptDrawGameOver();
}
