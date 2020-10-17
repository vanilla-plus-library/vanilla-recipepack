scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 875
scoreboard players set #box_z1 twvp.temp 938

execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=east,type=right] run scoreboard players set #box_z0 twvp.temp 0
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=east,type=left] run scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=west,type=left] run scoreboard players set #box_z0 twvp.temp 0
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=west,type=right] run scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=north,type=right] run scoreboard players set #box_x0 twvp.temp 0
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=north,type=left] run scoreboard players set #box_x1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=south,type=left] run scoreboard players set #box_x0 twvp.temp 0
execute if block ~ ~ ~ #thewii:vp_library/raycasting/big_chest[facing=south,type=right] run scoreboard players set #box_x1 twvp.temp 1000


function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected