scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 344
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 781
scoreboard players set #box_z1 twvp.temp 125
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 344
scoreboard players set #box_z0 twvp.temp 875
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 781
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 344
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 125
scoreboard players set #box_y1 twvp.temp 781
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 875
scoreboard players set #box_y0 twvp.temp 344
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 781
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected