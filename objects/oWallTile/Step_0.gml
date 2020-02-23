// Change the colour of the wall according to the leader
if (global.leader = "null")
{
	sprite_index = sWallTile;
}

if (global.leader = oPlayer1)
{
	sprite_index = sWallP1;
}

if (global.leader = oPlayer2)
{
	sprite_index = sWallP2;
}

if (global.leader = oPlayer3)
{
	sprite_index = sWallP3;
}

if (global.leader = oPlayer4)
{
	sprite_index = sWallP4;
}