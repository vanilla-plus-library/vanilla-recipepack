# Choose a side to detect based on direction
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.rx matches 1.. if score #block_x twvp.temp <= #box_x0 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/x0
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.rx matches ..-1 if score #block_x twvp.temp >= #box_x1 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/x1
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.ry matches 1.. if score #block_y twvp.temp <= #box_y0 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/y0
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.ry matches ..-1 if score #block_y twvp.temp >= #box_y1 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/y1
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.rz matches 1.. if score #block_z twvp.temp <= #box_z0 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/z0
execute unless entity @e[tag=twvp.ray.touch_cube_edge] if score @s twvp.rz matches ..-1 if score #block_z twvp.temp >= #box_z1 twvp.temp run function thewii:vp_library/raycasting/mrcd/complex_cube/z1
tag @e[tag=twvp.ray.touch_cube_edge] remove mrcd_touch_cube_edge