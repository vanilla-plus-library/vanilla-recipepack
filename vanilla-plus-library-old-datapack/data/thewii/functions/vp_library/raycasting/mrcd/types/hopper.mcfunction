# 其他
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y0 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 1000
function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_z1 twvp.temp 750
function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_y1 twvp.temp 250
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 750
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 250
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z0 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main



execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_detected