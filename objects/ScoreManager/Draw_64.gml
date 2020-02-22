if GameController.inGame
{
	// Draw the Score
	draw_text(10, 10, oPlayer1.myScore);
	draw_text(20, 10, oPlayer2.myScore);
	draw_text(30, 10, oPlayer3.myScore);
	draw_text(40, 10, oPlayer4.myScore);
	//draw_text_ext_color(50, 50, oPlayer1.myScore, 5, 10, c_yellow, c_yellow, c_yellow, c_white, 1);

	// Score
	if GameController.playerNb == 2
	{
		dist = room_width / (GameController.playerNb + 1);
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
	}
}