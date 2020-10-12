scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 188
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 563
scoreboard players set #box_z1 twvp.temp 1000
function thewii:vp_library/raycasting/mrcd/complex_cube/main

# 10
scoreboard players set #box_x0 twvp.temp 812
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 188
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
# 00
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 0
scoreboard players set #box_x1 twvp.temp 188
scoreboard players set #box_y1 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 188
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
# 11
scoreboard players set #box_x0 twvp.temp 812
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 812
scoreboard players set #box_x1 twvp.temp 1000
scoreboard players set #box_y1 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
# 01
scoreboard players set #box_x0 twvp.temp 0
scoreboard players set #box_y0 twvp.temp 0
scoreboard players set #box_z0 twvp.temp 812
scoreboard players set #box_x1 twvp.temp 188
scoreboard players set #box_y1 twvp.temp 188
scoreboard players set #box_z1 twvp.temp 1000
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=south] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=north] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=east] run function thewii:vp_library/raycasting/mrcd/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=west] run function thewii:vp_library/raycasting/mrcd/complex_cube/main


tag @s add mrcd_detected