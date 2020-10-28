# Reset triggers
advancement revoke @s only vplib:block_placement/v1/placed_item_frame

# Player cardinal direction
function vplib:block_placement/v1/general/player/detect_cardinal

# Find item frame
execute as @e[type=minecraft:item_frame,tag=vplib.place_block,distance=..8] at @s run function vplib:block_placement/v1/placed/item_frame/validate