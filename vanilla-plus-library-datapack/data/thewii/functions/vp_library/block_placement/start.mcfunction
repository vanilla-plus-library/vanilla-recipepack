scoreboard players set #raycast_limit twvp.temp 120
execute anchored eyes positioned ^ ^ ^ run function thewii:vp_library/block_placement/raycast
execute if score #raycast_limit twvp.temp matches 0 run function thewii:vp_library/block_placement/grid_y

advancement revoke @s only thewii:vp_library/placed_furnace