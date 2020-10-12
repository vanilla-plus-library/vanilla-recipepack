scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 563
function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 563
execute if block ~ ~ ~ #thewii:vp_library/raycasting/glass_pane_like[east=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 438
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 563
execute if block ~ ~ ~ #thewii:vp_library/raycasting/glass_pane_like[west=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 438
execute if block ~ ~ ~ #thewii:vp_library/raycasting/glass_pane_like[north=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 563
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/glass_pane_like[south=true] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_detected