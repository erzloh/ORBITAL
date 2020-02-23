//@desc PlayerMovement(player)
// This script handle the movement, the jump, the collisions of the player.

//@arg player

var p = argument0;

//("testt is " + testt);
// Get Player Inputs
if (ds_list_find_index(maluses, 0) == -1) {
    goRight = keyboard_check(InputManager.rightKey[p]);
    goLeft  = keyboard_check(InputManager.leftKey[p]);
    jump    = keyboard_check_pressed(InputManager.upKey[p]);
}

if (ds_list_find_index(maluses, 2) != -1) {
    //show_debug_message("dupa and lastGrvMl is " + string(testt));
    if (testt == "bruh") {
        testt = "first2";
        grv = 0.1;
		jumpPower = 5;
    } else if (testt == "first3") {
        testt = 2;
    }
    if (testt == 2) {
        grv = 0.1;
		jumpPower = 5;
    }
}
if (ds_list_find_index(maluses, 3) != -1) {
    if (testt == "bruh") {
        testt = "first3";
        grv = 0.8;
		jumpPower = 12;
    } else if (testt == "first2") {
        testt = 3;
    }
    if (testt == 3) {
        grv = 0.8;
		jumpPower = 12;
    }
} 
if (ds_list_find_index(maluses, 2) == -1 && ds_list_find_index(maluses, 3) == -1) {
    grv = originalGrv;
	jumpPower = originalJumpPower;
}
/*if (ds_list_find_index(maluses, 2) == -1) {
    jumpPower = originalJumpPower;
}*/
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

// Jump
if jump && canJump > 0
{    
    if (ds_list_find_index(maluses, 1) == -1) {
        vsp = -jumpPower;
		repeat(10)
		{
			instance_create_layer(x, y+(sprite_height/2), "wall", oDust);
		}
    } else if (ds_list_find_index(maluses, 1) != -1) {
        vsp = jumpPower;
		repeat(10)
		{
			instance_create_layer(x, y-(sprite_height/2), "wall", oDust);
		}
    }
    canJump = 0;
}

// NOT IN USE
//// Collision with players
//if place_meeting(x, y, oPlayer2)
//{
//    pushedDir = sign(x - oPlayer2.x);
//    hsp = 16 * pushedDir;
//    state = "pushed"
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