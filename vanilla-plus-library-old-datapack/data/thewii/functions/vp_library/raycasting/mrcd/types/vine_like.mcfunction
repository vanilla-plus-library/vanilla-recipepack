scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 937
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[south=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 63
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[north=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 937
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[east=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 63
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[west=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 937
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[up=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/vine_like[up=false,west=false,east=false,south=false,north=false] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_detected