scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ #minecraft:walls[up=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 500
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 875
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ #minecraft:walls[east=low] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 500
scoreboard players set #box_y1 twvp.temp 875
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ #minecraft:walls[west=low] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 875
scoreboard players set #box_z1 twvp.temp 500
execute if block ~ ~ ~ #minecraft:walls[north=low] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 500
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 875
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:walls[south=low] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 500
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ #minecraft:walls[east=tall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 500
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ #minecraft:walls[west=tall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 500
execute if block ~ ~ ~ #minecraft:walls[north=tall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 500
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:walls[south=tall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_detected