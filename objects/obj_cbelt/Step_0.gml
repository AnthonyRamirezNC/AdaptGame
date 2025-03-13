if instance_exists(obj_player) {
    // Check if player is on top of the conveyor
    if place_meeting(x, y - 1, obj_player) {
        var move_amount = (image_xscale > 0) ? -1 : 1;
        // Allow movement ONLY if it does not push the player further into the column
        if (!place_meeting(obj_player.x + move_amount * 16, obj_player.y - 20, obj_hpress_col)) {
            obj_player.x += move_amount;
        }
    }
}