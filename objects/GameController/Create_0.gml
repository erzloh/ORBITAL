// Create Managers
instance_create_layer(0, 0, "controller", InputManager);
instance_create_layer(0, 0, "controller", MusicManager);
//instance_create_layer(0, 0, "controller", oTransition);

createdInGameControllers = false;



// Create Variables
playerNb = 2;
inGame   = false;

global.canMove = true;