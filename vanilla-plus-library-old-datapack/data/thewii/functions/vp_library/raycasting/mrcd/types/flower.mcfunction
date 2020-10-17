scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 625
scoreboard players set #box_z1 twvp.temp 688

execute store result score #var0 twvp.temp run scoreboard players get #block_corner_x twvp.temp
execute store result score #var1 twvp.temp run scoreboard players get #block_corner_z twvp.temp
scoreboard players operation #var0 twvp.temp /= #1000 twvp.math
scoreboard players operation #var1 twvp.temp /= #1000 twvp.math
function thewii:vp_library/raycasting/mrcd/calculate/offset
scoreboard players operation #box_x0 twvp.temp += #var0 twvp.temp
scoreboard players operation #box_x1 twvp.temp += #var0 twvp.temp
scoreboard players operation #box_z0 twvp.temp += #var1 twvp.temp
scoreboard players operation #box_z1 twvp.temp += #var1 twvp.temp

function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected