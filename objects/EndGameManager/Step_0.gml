gameTimer++;
if (gameTimer > gameDuration) {
	GameController.inGame = false;
	//room_goto_next();
	endGame = true;
}

// Board
if time < duration
{
	x1 = ease_out_elastic(time, startX1, destX1 - startX1, duration);
	x2 = ease_out_elastic(time, startX2, destX2 - startX2, duration);
	y1 = ease_out_elastic(time, startY1, destY1 - startY1, duration);
	y2 = ease_out_elastic(time, startY2, destY2 - startY2, duration);
	
	time++;
}