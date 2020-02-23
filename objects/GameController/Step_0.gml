if !createdInGameControllers && inGame{
	createdInGameControllers = true;
	
	// Create Managers
	instance_create_layer(0, 0, "controller", oCoinSpawner);
	instance_create_layer(0, 0, "controller", ScoreManager);
	instance_create_layer(0, 0, "controller", MalusManager);
	instance_create_layer(0, 0, "controller", EndGameManager);
	
	// Create Players
	switch playerNb
	{
		case 2:
			instance_create_layer(144, 528, "player", oPlayer1);
			instance_create_layer(400, 480, "player", oPlayer2);
			break;
			
		case 3:
			instance_create_layer(144, 528, "player", oPlayer1);
			instance_create_layer(400, 480, "player", oPlayer2);
			instance_create_layer(576, 544, "player", oPlayer3);
			break;
		
		case 4:
			instance_create_layer(144, 528, "player", oPlayer1);
			instance_create_layer(400, 480, "player", oPlayer2);
			instance_create_layer(576, 544, "player", oPlayer3);
			instance_create_layer(832, 544, "player", oPlayer4);
	}
}