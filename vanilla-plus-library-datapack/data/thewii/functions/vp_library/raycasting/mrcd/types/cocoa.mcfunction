scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 438
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 313
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=0] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 375
scoreboard players set #box_y0 twvp.temp 438
scoreboard players set #box_z0 twvp.temp 688
scoreboard players set #box_x1 twvp.temp 625
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=0] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 438
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 313
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=0] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 688
scoreboard players set #box_y0 twvp.temp 438
scoreboard players set #box_z0 twvp.temp 375
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 625
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=0] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 313
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 438
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=1] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 313
scoreboard players set #box_y0 twvp.temp 313
scoreboard players set #box_z0 twvp.temp 563
scoreboard players set #box_x1 twvp.temp 688
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=1] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 313
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 438
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=1] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 563
scoreboard players set #box_y0 twvp.temp 313
scoreboard players set #box_z0 twvp.temp 313
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 688
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=1] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 63
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 563
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=2] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 250
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 438
scoreboard players set #box_x1 twvp.temp 750
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=2] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 63
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 563
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=2] run function thewii:vp_library/raycasting/mrcd/cube/main
scoreboard players set #box_x0 twvp.temp 438
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 250
scoreboard players set #box_x1 twvp.temp 938
scoreboard players set #box_y1 twvp.temp 750
scoreboard players set #box_z1 twvp.temp 750
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=2] run function thewii:vp_library/raycasting/mrcd/cube/main
tag @s add mrcd_detected