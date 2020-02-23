if place_meeting(x, y, oCoin)
{
	obj = instance_place(x, y, oCoin);
	instance_destroy(obj);
	myScore += 1;
	SpawnCoin();
	flash = 8;
	ScreenShake(6, 30);
	repeat(10)
	{
		with instance_create_layer(x, y, "coins", oDust)
		{
			image_blend = c_yellow;
		}
	}
	audio_play_sound(snCoin, 10, false);
}