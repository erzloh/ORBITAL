
hsp -= sign(pushedDir);

if hsp == 0
{
	state = "free";
}

// Collision with players
//if place_meeting(x, y, oPlayer2)
//{

//}

// Horizontal Collisions
if place_meeting(x+hsp, y, oWallTile)
{
	while !place_meeting(x+sign(hsp), y, oWallTile)
	{
		x += sign(hsp);
	}
	hsp = 0;
}

// Vertical Collisions
if place_meeting(x, y+vsp, oWallTile)
{
	while !place_meeting(x, y+sign(vsp), oWallTile)
	{
		y += sign(vsp);
	}
	vsp = 0;
}

// Update Player Position
x += hsp;
y += vsp;