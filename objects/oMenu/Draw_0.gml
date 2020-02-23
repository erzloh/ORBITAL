/// @desc Draw the menu
anim += mouse_wheel_down() - mouse_wheel_up(); // Array index
anim += keyboard_check_pressed(InputManager.downKey[0]) - keyboard_check_pressed(InputManager.upKey[0]);
anim += keyboard_check_pressed(InputManager.downKey[1]) - keyboard_check_pressed(InputManager.upKey[1]);
anim += keyboard_check_pressed(InputManager.downKey[2]) - keyboard_check_pressed(InputManager.upKey[2]);
anim += keyboard_check_pressed(InputManager.downKey[3]) - keyboard_check_pressed(InputManager.upKey[3]);

anim = clamp(anim, 0, array_length_1d(array)-1);
anim_n = ReachTween(anim_n, anim, anim_spd); // value that reaches slowly anim

//centerX = mouse_x;
//centerY = mouse_y;

// Sound
//if keyboard_check_pressed(InputManager.downKey[0]) { audio_play_sound(snButton, 10, false); }


for (var _i = 0; _i < 4; _i++)
{
	if keyboard_check_pressed(InputManager.downKey[_i]) { audio_play_sound(snButton, 10, false); }
	if keyboard_check_pressed(InputManager.upKey[_i]) { audio_play_sound(snButton, 10, false); }
}

//audio_play_sound(snButton, 10, false);

draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

// To display only 2 objects above and bellow : 
// for(var i = max(anim-2, 0); i < min(anim+3, array_length_1d(array)); i++)
for(var i = 0; i < array_length_1d(array); i++)
{
	var textPos = i - anim_n; // text position from the center. If negatif, the text is displayed above. If positif, the text is displayed below.
	
	draw_set_colour((i==anim)?selected_col:not_selected_col);
	
	// Select the number of players
	if i == anim && (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))
	{
		if anim == 0
		{
			GameController.playerNb = 2;
		}
		else if anim == 1
		{
			GameController.playerNb = 3;
		}
		else if anim == 2
		{
			GameController.playerNb = 4;
		}
		audio_play_sound(snStart, 10, false);
		room_goto_next();
		GameController.inGame = true;
		//SlideTransition(TRANS_MODE.NEXT);
	}
	
	draw_text(centerX, centerY + (textPos*font_size*inbetween_text_space), array[i]);
	//draw_text_transformed(centerX + lengthdir_x(dist, textPos*-angle), 
	//					    centerY + lengthdir_y(dist, textPos*-angle),
	//					    array[i], 1, 1, textPos*-angle);
}

