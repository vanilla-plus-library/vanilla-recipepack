scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y1 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 625
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 625
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 375
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_z0 twvp.temp 625
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 375
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected