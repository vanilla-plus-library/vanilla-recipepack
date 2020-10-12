scoreboard players set #box_x0 twvp.temp 344
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 656
scoreboard players set #box_y1 twvp.temp 813
scoreboard players set #box_z1 twvp.temp 313
execute if block ~ ~ ~ #thewii:vp_library/raycasting/wall_torch_like[facing=south] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 344
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 688
scoreboard players set #box_x1 twvp.temp 656
scoreboard players set #box_y1 twvp.temp 813
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #thewii:vp_library/raycasting/wall_torch_like[facing=north] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 344
scoreboard players set #box_x1 twvp.temp 313
scoreboard players set #box_y1 twvp.temp 813
scoreboard players set #box_z1 twvp.temp 656
execute if block ~ ~ ~ #thewii:vp_library/raycasting/wall_torch_like[facing=east] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 688
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 344
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 813
scoreboard players set #box_z1 twvp.temp 656
execute if block ~ ~ ~ #thewii:vp_library/raycasting/wall_torch_like[facing=west] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected