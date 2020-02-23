start    = -100;
dest     = room_height/2;
duration = 90;
time     = 0;
	
boardList = ds_list_create();
ds_list_add(boardList, sPlayer1, sPlayer2, sPlayer3, sPlayer4);

ScreenShake(30, 60);

txt_x = 0;

startX = -100;
destX = room_width/2;
