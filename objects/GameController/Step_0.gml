if !createdInGameControllers && inGame{
	createdInGameControllers = true;
	instance_create_layer(0, 0, "controller", oCoinSpawner);
	instance_create_layer(0, 0, "controller", ScoreManager);
	 instance_create_layer(0, 0, "controller", MalusManager);
}