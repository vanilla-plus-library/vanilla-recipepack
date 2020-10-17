scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 812
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 188
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south,open=true] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 812
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 188
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 812
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west,open=true] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected