scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 375
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 625
scoreboard players set #box_x1 twvp.temp 687
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 375
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 625
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 687
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected