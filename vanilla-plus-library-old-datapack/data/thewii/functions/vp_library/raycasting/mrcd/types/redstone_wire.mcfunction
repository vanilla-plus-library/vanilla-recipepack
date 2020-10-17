scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire[east=side] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire[west=side] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:redstone_wire[south=side] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 63
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire[north=side] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main




scoreboard players set #box_x0 twvp.temp 938
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 188
scoreboard players set #box_x1 twvp.temp 63
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 813
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 938
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

scoreboard players set #box_x0 twvp.temp 188
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 813
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 63
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run function thewii:vp_library/raycasting/mrcd/complex_cube/main

execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=twvp.ray.touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_detected