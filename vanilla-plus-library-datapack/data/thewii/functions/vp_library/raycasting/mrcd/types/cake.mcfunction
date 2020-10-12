scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 500
scoreboard players set #box_z1 twvp.temp 938

execute if block ~ ~ ~ minecraft:cake[bites=0] run scoreboard players set #box_x0 twvp.temp 63
execute if block ~ ~ ~ minecraft:cake[bites=1] run scoreboard players set #box_x0 twvp.temp 188
execute if block ~ ~ ~ minecraft:cake[bites=2] run scoreboard players set #box_x0 twvp.temp 313
execute if block ~ ~ ~ minecraft:cake[bites=3] run scoreboard players set #box_x0 twvp.temp 438
execute if block ~ ~ ~ minecraft:cake[bites=4] run scoreboard players set #box_x0 twvp.temp 563
execute if block ~ ~ ~ minecraft:cake[bites=5] run scoreboard players set #box_x0 twvp.temp 688
execute if block ~ ~ ~ minecraft:cake[bites=6] run scoreboard players set #box_x0 twvp.temp 813




function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected