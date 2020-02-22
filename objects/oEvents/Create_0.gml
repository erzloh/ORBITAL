/// @description Insert description here
// You can write your code in this editor
player1 = instance_create_layer(160, 608, "player", oPlayer);
with (player1) {
	color = "red";
}
//player1.color = "red";

// Create Managers
instance_create_layer(0, 0, "controller", InputManager);