if GameController.inGame {
	//if !musicActivated {
	//	musicActivated = true;
	//	audio_stop_sound(mMenu);
	//	audio_play_sound(mP2, 5, true);
	
	// Play music
	if !musicActivated 
	{
		musicActivated = true;
		
		// Play all the tracks
		music1 = audio_play_sound(mP1, 5, true);
		music2 = audio_play_sound(mP2, 5, true);
		music3 = audio_play_sound(mP3, 5, true);
		music4 = audio_play_sound(mP4, 5, true);
		
		// Mute all the tracks
		audio_sound_gain(music1, 0, 0);
		audio_sound_gain(music2, 0, 0);
		audio_sound_gain(music3, 0, 0);
		audio_sound_gain(music4, 0, 0);
	}
	
	// Change the music according to the leader
	if (global.leader = "null")
	{
		
	}

	if (global.leader = oPlayer1) 
	{
		mP2Activated = false;
		mP3Activated = false;
		mP4Activated = false;
		
		if !mP1Activated
		{
			mP1Activated = true;
			
			// Demute track 1
			audio_sound_gain(music1, 1, 0);
			
			// Mute all the other tracks
			audio_sound_gain(musicMenu, 0, 0);
			audio_sound_gain(music2, 0, 0);
			audio_sound_gain(music3, 0, 0);
			audio_sound_gain(music4, 0, 0);
			//audio_sound_gain(snd, 1, 5000);
			
			//audio_stop_all();
			//audio_play_sound(mP1, 5, true);
		}
	}

	if (global.leader = oPlayer2)
	{
		mP1Activated = false;
		mP3Activated = false;
		mP4Activated = false;
		
		if !mP2Activated
		{
			mP2Activated = true;
			
			// Demute track 2
			audio_sound_gain(music2, 1, 0);
			
			// Mute all the other tracks
			audio_sound_gain(musicMenu, 0, 0);
			audio_sound_gain(music1, 0, 0);
			audio_sound_gain(music3, 0, 0);
			audio_sound_gain(music4, 0, 0);
			//audio_stop_all();
			//audio_play_sound(mP2, 5, true);
		}
	}

	if (global.leader = oPlayer3)
	{
		mP1Activated = false;
		mP2Activated = false;
		mP4Activated = false;
		
		if !mP3Activated
		{
			mP3Activated = true;
			
			// Demute track 3
			audio_sound_gain(music3, 1, 0);
			
			// Mute all the other tracks
			audio_sound_gain(musicMenu, 0, 0);
			audio_sound_gain(music1, 0, 0);
			audio_sound_gain(music2, 0, 0);
			audio_sound_gain(music4, 0, 0);
			//audio_stop_all();
			//audio_play_sound(mP3, 5, true);
		}
	}

	if (global.leader = oPlayer4)
	{
		mP1Activated = false;
		mP2Activated = false;
		mP3Activated = false;
		
		if !mP4Activated
		{
			mP4Activated = true;
			
			// Demute track 4
			audio_sound_gain(music4, 1, 0);
			
			// Mute all the other tracks
			audio_sound_gain(musicMenu, 0, 0);
			audio_sound_gain(music1, 0, 0);
			audio_sound_gain(music2, 0, 0);
			audio_sound_gain(music3, 0, 0);
			//audio_stop_all();
			//audio_play_sound(mP4, 5, true);
		}
	}
}

//audio_is_playing()


//audio_emitter_gain()