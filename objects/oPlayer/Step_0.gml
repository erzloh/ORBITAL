goRight = keyboard_check(InputManager.rightKey[p]);
goLeft  = keyboard_check(InputManager.leftKey[p]);
jump    = keyboard_check_pressed(InputManager.upKey[p]);

// Movement
var move = goRight - goLeft;
hsp = walksp * move;
vsp += grv;

// Jump
if jump
{
	vsp = -jumpPower;
}

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