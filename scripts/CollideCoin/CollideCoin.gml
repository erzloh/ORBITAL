if place_meeting(x, y, oCoin)
{
	obj = instance_place(x, y, oCoin);
	instance_destroy(obj);
	myScore += 1;
	SpawnCoin();
	flash = 8;
}