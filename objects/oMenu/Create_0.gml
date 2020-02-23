/// @desc Initialize the list
array[0] = "2 PLAYERS";
array[1] = "3 PLAYERS";
array[2] = "4 PLAYERS";

anim   = 0; // the targeted array position
anim_n = 0; // the steps inbetween

font      = fMenu;
font_size = font_get_size(font);

centerX = (room_width/4)*3;
centerY = room_height/2;

angle                = 30;
dist                 = 64; // Distance from the center
inbetween_text_ratio = 1.5; // Scaler of the font
inbetween_text_space = 2;
selected_col         = c_red;
not_selected_col     = c_white;
anim_spd             = 10; // the lower, the faster

sounded = false;

// Create the triangle
instance_create_layer(x, y, layer, oTriangle);