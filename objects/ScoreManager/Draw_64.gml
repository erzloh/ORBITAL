draw_set_font(fGui);
draw_set_color(c_white);

if GameController.inGame
{
	// Score with 2 players
	if GameController.playerNb == 2
	{
		dist = room_width / (GameController.playerNb + 1);
		
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer1.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer1.maluses, n));
			show_debug_message("n is "+string(n)+", added "+string(ds_list_find_value(oPlayer1.maluses, n)));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer1.testt == "first3" || oPlayer1.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer1.testt == "first2" || oPlayer1.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			}
		}
		
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer2.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer2.maluses, n));
			show_debug_message("n is "+string(n)+", added "+string(ds_list_find_value(oPlayer1.maluses, n)));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer2.testt == "first3" || oPlayer2.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer2.testt == "first2" || oPlayer2.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*2+70+35*(k), GUI_y);
			}
		}
	}
	
	// Score with 3 players
	if GameController.playerNb == 3
	{
		dist = room_width / (GameController.playerNb + 1);
		draw_sprite(sPlayer1, 0, dist, GUI_y);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer1.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer1.maluses, n));
			show_debug_message("n is "+string(n)+", added "+string(ds_list_find_value(oPlayer1.maluses, n)));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer1.testt == "first3" || oPlayer1.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer1.testt == "first2" || oPlayer1.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			}
		}
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer2.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer2.maluses, n));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer2.testt == "first3" || oPlayer2.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer2.testt == "first2" || oPlayer2.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*2+70+35*(k), GUI_y);
			}
		}
		
		draw_sprite(sPlayer3, 0, dist*3, GUI_y);
		draw_text((dist*3)+25, GUI_y, oPlayer3.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer3.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer3.maluses, n));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer3.testt == "first3" || oPlayer3.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer3.testt == "first2" || oPlayer3.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*3+70+35*(k), GUI_y);
			}
		}
	}
	
	// Score with 4 players
	if GameController.playerNb == 4
	{
		dist = room_width / (GameController.playerNb + 1);
		
		draw_sprite(sPlayer1, 0, dist, GUI_y);		
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		draw_text(dist+25, GUI_y, oPlayer1.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer1.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer1.maluses, n));
			show_debug_message("n is "+string(n)+", added "+string(ds_list_find_value(oPlayer1.maluses, n)));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer1.testt == "first3" || oPlayer1.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer1.testt == "first2" || oPlayer1.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist+70+35*(k), GUI_y/*+35*(i+1)*/);
			}
		}
		
		draw_sprite(sPlayer2, 0, dist*2, GUI_y);
		draw_text((dist*2)+25, GUI_y, oPlayer2.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer2.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer2.maluses, n));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer2.testt == "first3" || oPlayer2.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer2.testt == "first2" || oPlayer2.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*2+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*2+70+35*(k), GUI_y);
			}
		}
		
		draw_sprite(sPlayer3, 0, dist*3, GUI_y);
		draw_text((dist*3)+25, GUI_y, oPlayer3.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer3.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer3.maluses, n));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer3.testt == "first3" || oPlayer3.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer3.testt == "first2" || oPlayer3.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*3+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*3+70+35*(k), GUI_y);
			}
		}
		
		draw_sprite(sPlayer4, 0, dist*4, GUI_y);
		draw_text((dist*4)+25, GUI_y, oPlayer4.myScore);
		cleanedList = ds_list_create();
		for (n = 0; n < ds_list_size(oPlayer4.maluses); n++) {
			ds_list_add(cleanedList, ds_list_find_value(oPlayer4.maluses, n));
		}
		for (j = 0; j < ds_list_size(cleanedList); j++) {
			if (ds_list_find_value(cleanedList, j) == 2) {
				if (oPlayer4.testt == "first3" || oPlayer4.testt == 3) {
					ds_list_delete(cleanedList, j);
				}
			}
			if (ds_list_find_value(cleanedList, j) == 3) {
				if (oPlayer4.testt == "first2" || oPlayer4.testt == 2) {
					ds_list_delete(cleanedList, j);
				}
			}
		}
		for (k = 0; k < ds_list_size(cleanedList); k++) {
			if (ds_list_find_value(cleanedList, k) == 0) {
				draw_sprite(sInvertKeys, 0, dist*4+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 1) {
				draw_sprite(sChangeGravity, 0, dist*4+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 3) {
				draw_sprite(sHighGravity, 0, dist*4+70+35*(k), GUI_y);
			} else if (ds_list_find_value(cleanedList, k) == 2) {
				draw_sprite(sLowGravity, 0, dist*4+70+35*(k), GUI_y);
			}
		}
	}
}

// Time Bar
if (GameController.inGame && global.leader != "null" && ds_list_size(global.leader.maluses) < ds_list_size(MalusManager.malusList)) {
	draw_healthbar(30, 10, room_width-30, 32-10, MalusManager.malusTimer/(MalusManager.secondsBetweenMalus*6/10), c_black, c_red, c_red, -1, true, true);
}