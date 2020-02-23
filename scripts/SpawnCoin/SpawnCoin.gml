/*randomize();

randW = random(room_width);
randH = random(room_height);

while place_meeting(randW, randH, oWallTile)
{
	randW = random(room_width);
	randH = random(room_height);
}

instance_create_layer(randW, randH, "wall", oCoin);*/




//spawn de coin
//if (irandom(70) == 1) {
if GameController.inGame {
    eligibleTiles2 = ds_list_create();
    //show_debug_message("-------------------");
    for (var i = 0; i < instance_number(oWallTile); ++i;) {
        currentTile = instance_find(oWallTile,i)
        //show_debug_message("found oWallTile"+" "+string(currentTile.x)+", "+string(currentTile.y));
        if (instance_position(currentTile.x, currentTile.y-currentTile.sprite_height, oWallTile) || instance_position(currentTile.x, currentTile.y-currentTile.sprite_height, oCoin) || currentTile.y < currentTile.sprite_height*2) {
            //show_debug_message("not eligible");
        } else {
            ds_list_add(eligibleTiles2, currentTile);
            
            //eligibleTiles[i] = currentTile;
            //show_debug_message("added "+string(currentTile));
            //show_debug_message("--");
            //for (j = 0; j < array_length_1d(eligibleTiles); j++) {
                //show_debug_message("eligibleTiles"+string(j)+" "+string(eligibleTiles[j]));
            //}
            //show_debug_message("--");
        }
    }
    rand = irandom(ds_list_size(eligibleTiles2)-1);
    //show_debug_message(rand);
    tile = ds_list_find_value(eligibleTiles2, rand);//instance_find(oWallTile, ds_list_find_value(eligibleTiles2, rand));
    //show_debug_message(tile);
    if (tile != undefined) {
        instance_create_layer(tile.x, tile.y-tile.sprite_height, "coins", oCoin);
    }
}
