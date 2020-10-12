scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_y1 twvp.temp 438
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #thewii:vp_library/raycasting/lanterns[hanging=false] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 438
scoreboard players set #box_y1 twvp.temp 563
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ #thewii:vp_library/raycasting/lanterns[hanging=false] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y0 twvp.temp 63
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ #thewii:vp_library/raycasting/lanterns[hanging=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 500
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ #thewii:vp_library/raycasting/lanterns[hanging=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main





execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_detected