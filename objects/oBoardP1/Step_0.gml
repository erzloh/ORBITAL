if time < duration
{
	y = ease_out_elastic(time, start, dest - start, duration);
	txt_x = ease_out_elastic(time, startX, destX - startX, duration);
	time++;
}

// Change the colour of the wall according to the leader
if (global.leader = "null")
{
	sprite_index = sBoardNull;
}

if (global.leader = oPlayer1)
{
	sprite_index = sBoardP1;
}

if (global.leader = oPlayer2)
{
	sprite_index = sBoardP2;
}

if (global.leader = oPlayer3)
{
	sprite_index = sBoardP3;
}

if (global.leader = oPlayer4)
{
	sprite_index = sBoardP4;
}

// Restart the game
if keyboard_check_pressed(vk_space)
{
	game_restart();
}