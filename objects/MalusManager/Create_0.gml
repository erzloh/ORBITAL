timer = 0; //triggers each 5 seconds
malusTimer = 0; //triggers each 15 seconds, by default
secondsBetweenMalus = 8;
testOn = true;
justChangedLeader = false; // idk si ca sert a qqch mais osef
global.leader = "null";
global.hasChangedLeader1 = false;
global.hasChangedLeader2 = false;
global.hasChangedLeader3 = false;
global.hasChangedLeader4 = false;

//liste de malus disponibles
malusList = ds_list_create();
//inverser touches: 0; inverser gravité: 1; 
ds_list_add(malusList, 0, 1, 2, 3);