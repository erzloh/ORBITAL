gameTimer++;
if (gameTimer > gameDuration) {
	GameController.inGame = false;
	room_goto_next();
}