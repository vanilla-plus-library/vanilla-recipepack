scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 188
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=left] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=right] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 812
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=left] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=right] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 188
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=left] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=right] run function thewii:vp_library/raycasting/mrcd/cube/main

scoreboard players set #box_x0 twvp.temp 812
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 1000
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=left] run function thewii:vp_library/raycasting/mrcd/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=right] run function thewii:vp_library/raycasting/mrcd/cube/main


tag @s add mrcd_detected