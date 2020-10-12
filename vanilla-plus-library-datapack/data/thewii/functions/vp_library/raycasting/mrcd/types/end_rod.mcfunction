scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:end_rod[facing=up] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=down] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:end_rod[facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:end_rod[facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected