draw_set_font(fGui);
draw_set_color(c_white);

if GameController.inGame
{
	// Score with 2 players
	if GameController.playerNb == 2
	{
		dist = room_width / (GameController.playerNb + 1);
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
	}
	
	// Score with 3 players
	if GameController.playerNb == 3
	{
		dist = room_width / (GameController.playerNb + 1);
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
		
		draw_sprite(sPlayer3, 0, dist*3, GUI_y);
		draw_text((dist*3)+25, GUI_y, oPlayer3.myScore);
	}
	
	// Score with 4 players
	if GameController.playerNb == 4
	{
		dist = room_width / (GameController.playerNb + 1);
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
		
		draw_sprite(sPlayer3, 0, dist*3, GUI_y);
		draw_text((dist*3)+25, GUI_y, oPlayer3.myScore);
		
		draw_sprite(sPlayer4, 0, dist*4, GUI_y);
		draw_text((dist*4)+25, GUI_y, oPlayer4.myScore);
	}
}

// Time Bar
if (global.leader != "null") {
	draw_healthbar(30, 10, room_width-30, 32-10, MalusManager.malusTimer/(MalusManager.secondsBetweenMalus*6/10), c_black, c_red, c_green, -1, true, true);
}
