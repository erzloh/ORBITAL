if (self.color == "yellow") {
	sprite_index = sPlayer1;
} else if (self.color == "red") {
	sprite_index = sPlayer2;
}

//sprite_index = sPlayer2;

// Player Variables
p         = 0; // Player Number (0 = player 1, 1 = player 2 etc...)
hsp       = 0; // Horizontal Speed
vsp       = 0; // Vertical Speed
walksp    = 4; // Walk Speed
grv       = 0.3; // Gravity
jumpPower = 7; // How high the player can jump