#> vplib:block_placement/v1/placed/blast_furnace/raycast

# Check if it hits a furnace
execute if block ~ ~ ~ minecraft:blast_furnace run function thewii:vp_library/block_placement/placed_furnace/found

# Loop until it finds a furnace or reach distance limit
execute if score #found_furnace vplib.temp matches 0 if entity @s[distance=..6] positioned ^ ^ ^0.05 run function thewii:vp_library/block_placement/placed_furnace/raycast