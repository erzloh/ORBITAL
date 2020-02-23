///@desc PlayerMovement(player)
// This script handle the movement, the jump, the collisions of the player.

//@arg player

var p = argument0;

// Get Player Inputs
if (ds_list_find_index(maluses, 0) == -1) {
	goRight = keyboard_check(InputManager.rightKey[p]);
	goLeft  = keyboard_check(InputManager.leftKey[p]);
	jump    = keyboard_check_pressed(InputManager.upKey[p]);
}

// Movement
var move = goRight - goLeft;
hsp = walksp * move;
vsp += grv;

// Handle Maluses
if (ds_list_find_index(maluses, 0) != -1) {
	goRight = keyboard_check(InputManager.leftKey[p]);
	goLeft  = keyboard_check(InputManager.rightKey[p]);
	jump    = keyboard_check_pressed(InputManager.upKey[p]);

}
if (ds_list_find_index(maluses, 1) != -1) {
	vsp -= grv;
	vsp -= grv;
}
if (ds_list_find_index(maluses, 2) != -1) {
	//state = "malus2";
}



// Jump
if jump && canJump > 0
{	
	if (ds_list_find_index(maluses, 1) == -1) {
		vsp = -jumpPower;
	} else if (ds_list_find_index(maluses, 1) != -1) {
		vsp = jumpPower;
	}
	canJump = 0;
}

// NOT IN USE
//// Collision with players
//if place_meeting(x, y, oPlayer2)
//{
//	pushedDir = sign(x - oPlayer2.x);
//	hsp = 16 * pushedDir;
//	state = "pushed"
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

// On Ground or Ceiling if has gravity malus
if (ds_list_find_index(maluses, 1) == -1) {
	if place_meeting(x, y+1, oWallTile)
	{
		canJump = jumpDelay;
	}
} else if (ds_list_find_index(maluses, 1) != -1) {
	if place_meeting(x, y-1, oWallTile)
	{
		canJump = jumpDelay;
	}
}
canJump--;

// Update Player Position
x += hsp;
y += vsp;

