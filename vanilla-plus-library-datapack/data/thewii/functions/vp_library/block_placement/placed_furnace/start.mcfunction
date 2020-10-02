#> thewii:vp_library/block_placement/placed_furnace/start

# Revoke trigger
advancement revoke @s only thewii:vp_library/block_placement/placed_furnace

# Attempt to find the block by raycasting
scoreboard players set #found_furnace twvp.temp 0
execute anchored eyes positioned ^ ^ ^ run function thewii:vp_library/block_placement/placed_furnace/raycast

# If raycast fails, search all nearby blocks
execute if score #found_furnace twvp.temp matches 0 run function thewii:vp_library/block_placement/placed_furnace/grid_y