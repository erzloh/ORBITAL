draw_set_font(fMenu);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//allPlayerList = ds_list_create();
//ds_list_add(allPlayerList, oPlayer1, oPlayer2, oPlayer3, oPlayer4);
    
//playerList = ds_list_create();
//for (i = 0; i < GameController.playerNb; i++) {
//    ds_list_add(playerList, ds_list_find_value(allPlayerList, i));
//}

//orderedPlayerList = ds_list_create();
//ds_list_add(orderedPlayerList, ds_list_find_value(playerList, ds_list_size(playerList)-1));
//currentLowerScore = 0;
//for (i = 0; i < ds_list_size(playerList)-1; i++) {
//	currentLowestIndex = "-1";
//	for (j = 0; j < ds_list_size(orderedPlayerList)-1; j++)
//		if (ds_list_find_value(playerList, i).myScore < curr) {
			
//		}
//	}
//}

for (var i = 0; i < GameController.playerNb; i++)
{
	var hw = room_width/2;
	var hh = room_height/2;
	
	var centerY = hh - 128;
	player_i = ds_list_find_value(MalusManager.playerList, i);
	draw_text(hw, (y-128) + (i*80), "P"+string((i+1)) + " : " + string(player_i.myScore) + " coins");
	
	board_i = ds_list_find_value(boardList, i);
	draw_sprite(board_i, 1, hw - 128, (y-128) + (i*80));
}

timer++;
if timer > 60
{
	timer = 0;
	textSwitch = !textSwitch;
}
if textSwitch {
	draw_set_color(c_white);
	draw_text(txt_x, ScoreManager.GUI_y, "Press Space to restart");
}
