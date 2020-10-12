scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 0
scoreboard players set #box_z1 twvp.temp 1000

execute if block ~ ~ ~ minecraft:wheat[age=0] run scoreboard players set #box_y1 twvp.temp 125
execute if block ~ ~ ~ minecraft:wheat[age=1] run scoreboard players set #box_y1 twvp.temp 250
execute if block ~ ~ ~ minecraft:wheat[age=2] run scoreboard players set #box_y1 twvp.temp 375
execute if block ~ ~ ~ minecraft:wheat[age=3] run scoreboard players set #box_y1 twvp.temp 500
execute if block ~ ~ ~ minecraft:wheat[age=4] run scoreboard players set #box_y1 twvp.temp 625
execute if block ~ ~ ~ minecraft:wheat[age=5] run scoreboard players set #box_y1 twvp.temp 750
execute if block ~ ~ ~ minecraft:wheat[age=6] run scoreboard players set #box_y1 twvp.temp 875
execute if block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players set #box_y1 twvp.temp 1000


function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected