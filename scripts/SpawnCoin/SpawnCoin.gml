randomize();

randW = random(room_width);
randH = random(room_height);

while place_meeting(randW, randH, oWallTile)
{
	randW = random(room_width);
	randH = random(room_height);
}

instance_create_layer(randW, randH, "wall", oCoin);
