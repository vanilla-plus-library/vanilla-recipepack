# Reset triggers
advancement revoke @s only thewii:vp_library/block_placement/placed_frame

# Player cardinal direction
function thewii:vp_library/block_placement/detect_cardinal

# Find item frame
execute as @e[type=minecraft:item_frame,tag=twvp.place_block,distance=..8] at @s run function thewii:vp_library/block_placement/placed_frame/validate