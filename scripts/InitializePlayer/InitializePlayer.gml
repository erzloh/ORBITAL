// Player Variables
//@arg player

var player = argument0;

p         = player; // Player Number (0 = player 1, 1 = player 2 etc...)
hsp       = 0; // Horizontal Speed
vsp       = 0; // Vertical Speed
walksp    = 8; // Walk Speed
//grv       = 0.3; // Gravity
grv = 0.3;
originalGrv = grv;
//jumpPower = 10; // How high the player can jump
jumpPower = 10;
canJump   = 0; 
jumpDelay = 10; // How many frames the player can jump after leaving a platform
pushedDir = 0;
myScore   = 0;
flash     = 0;
testt = "bruh";

state = "normal";

//liste de malus qui sont appliqués au perso
maluses = ds_list_create();

lastGravityMalus = "null";
show_debug_message("lastGRV is: "+lastGravityMalus);

show_debug_message("hmmmmmmmm");