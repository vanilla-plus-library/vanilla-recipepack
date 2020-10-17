#
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

#
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y0 twvp.temp 250
scoreboard players set #box_y1 twvp.temp 375
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y0 twvp.temp 375
scoreboard players set #box_y1 twvp.temp 813
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run function thewii:vp_library/raycasting/mrcd/complex_cube/main


# ceiling
scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_z1 twvp.temp 563
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
# double_wall
scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_z1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
# single_wall
scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_z1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 813
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_z1 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 938
scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main







execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_detected