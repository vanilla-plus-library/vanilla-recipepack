scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 125
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 125
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 875
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 875
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 125
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 875
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 125
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 875
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected