scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 938
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=1] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run function thewii:vp_library/raycasting/mrcd/cube/main


tag @s add mrcd_detected