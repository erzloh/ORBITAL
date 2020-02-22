playerCount = 2;
playerColors = ["yellow", "red", "green", "blue"];
//playerPositions = ((160, 608), (512, 544));
playerPositions[0, 0] = 160;
playerPositions[0, 1] = 608;
playerPositions[1, 0] = 512;
playerPositions[1, 1] = 544;

for (i = 0; i < playerCount; i++) {
	global.p = i;
    global.couleur = playerColors[i];
    instance_create_layer(playerPositions[i, 0], playerPositions[i, 1], "player", oPlayer);
}

// Create Managers
instance_create_layer(0, 0, "controller", InputManager);