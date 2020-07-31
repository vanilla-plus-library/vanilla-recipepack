scoreboard players remove #raycast_limit twvp.temp 1
execute if block ~ ~ ~ minecraft:blast_furnace run function thewii:vp_library/block_placement/found
execute if score #raycast_limit twvp.temp matches 1.. positioned ^ ^ ^0.05 run function thewii:vp_library/block_placement/raycast