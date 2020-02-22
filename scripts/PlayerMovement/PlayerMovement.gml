///@desc PlayerMovement(player)
// This script handle the movement, the jump, the collisions of the player.

//@arg player

var p = argument0;

goRight = keyboard_check(InputManager.rightKey[p]);
goLeft  = keyboard_check(InputManager.leftKey[p]);
jump    = keyboard_check_pressed(InputManager.upKey[p]);

// Movement
var move = goRight - goLeft;
hsp = walksp * move;
vsp += grv;

// Collision with other Players
//if place_meeting(x, y+1, oPlayer)
//{
//	jump = true;
//	canJump = 10;
//}

// Jump
if jump && canJump > 0
{
	vsp = -jumpPower;
	canJump = 0;
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

// On Ground
if place_meeting(x, y+1, oWallTile)
{
	canJump = jumpDelay;
}
canJump--;

// Update Player Position
x += hsp;
y += vsp;