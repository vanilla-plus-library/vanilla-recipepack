scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 125
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] run scoreboard players set #box_y1 twvp.temp 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_west] run scoreboard players set #box_y1 twvp.temp 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_north] run scoreboard players set #box_y1 twvp.temp 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_south] run scoreboard players set #box_y1 twvp.temp 500


function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected