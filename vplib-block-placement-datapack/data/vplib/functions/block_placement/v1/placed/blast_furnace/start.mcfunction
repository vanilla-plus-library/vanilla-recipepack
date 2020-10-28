#> vplib:block_placement/v1/placed/blast_furnace/start

# Revoke trigger
advancement revoke @s only vplib:block_placement/v1/placed_blast_furnace

# Attempt to find the block by raycasting
scoreboard players set #found_furnace twvp.temp 0
execute anchored eyes positioned ^ ^ ^ run function vplib:block_placement/v1/placed/blast_furnace/raycast

# If raycast fails, search all nearby blocks
execute if score #found_furnace twvp.temp matches 0 run function vplib:block_placement/v1/placed/blast_furnace/grid_y