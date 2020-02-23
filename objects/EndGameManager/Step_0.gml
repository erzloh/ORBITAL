gameTimer++;
if (gameTimer > gameDuration) {
	GameController.inGame = false;
	//room_goto_next();
	endGame = true;
}

// Board
//if time < duration
//{
//	x1 = ease_out_elastic(time, startX1, destX1 - startX1, duration);
//	x2 = ease_out_elastic(time, startX2, destX2 - startX2, duration);
//	y1 = ease_out_elastic(time, startY1, destY1 - startY1, duration);
//	y2 = ease_out_elastic(time, startY2, destY2 - startY2, duration);
	
//	time++;
//}

// Draw End Game Board
if endGame && !boardSpawned
{
	boardSpawned = true;
	//draw_rectangle_color(x1, y1, x2, y2, c_aqua, c_white, c_green, c_fuchsia, false);
	instance_create_layer(room_width/2, -100, "controller", oBoardP1);
	audio_stop_all();
	audio_play_sound(mQuiet, 5, true);
	global.canMove = false;
	
}