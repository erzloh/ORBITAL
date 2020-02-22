//spawn de coin
if (irandom(10) == 1) {
    eligibleTiles2 = ds_list_create();
    show_debug_message("-------------------");
    for (var i = 0; i < instance_number(oWallTile); ++i;) {
        currentTile = instance_find(oWallTile,i)
        show_debug_message("found oWallTile"+" "+string(currentTile.x)+", "+string(currentTile.y));
        if (instance_position(currentTile.x, currentTile.y-currentTile.sprite_height, oWallTile) || instance_position(currentTile.x, currentTile.y-currentTile.sprite_height, oCoin)) {
            show_debug_message(" there is wall up");
        } else {
            ds_list_add(eligibleTiles2, currentTile);
            
            eligibleTiles[i] = currentTile;
            show_debug_message("added "+string(currentTile));
            show_debug_message("--");
            for (j = 0; j < array_length_1d(eligibleTiles); j++) {
                show_debug_message("eligibleTiles"+string(j)+" "+string(eligibleTiles[j]));
            }
            show_debug_message("--");
        }
    }
    show_debug_message("debug");
    
    
    /*rand = irandom(array_length_1d(eligibleTiles)-1);
    show_debug_message(string(eligibleTiles[rand]));
    
    //tile = instance_find(oWallTile, eligibleTiles[rand]);
    tile = eligibleTiles[rand];
    show_debug_message(instance_find(oWallTile, eligibleTiles[rand]));
    
    instance_create_layer(tile.x-32, tile.y-tile.sprite_height-32, "coins", oCoin);*/
    
    rand = irandom(ds_list_size(eligibleTiles2)-1);
    show_debug_message(rand);
    tile = ds_list_find_value(eligibleTiles2, rand);//instance_find(oWallTile, ds_list_find_value(eligibleTiles2, rand));
    show_debug_message(tile);
    if (tile != undefined) {
        instance_create_layer(tile.x-32, tile.y-tile.sprite_height-32, "coins", oCoin);
    }
}