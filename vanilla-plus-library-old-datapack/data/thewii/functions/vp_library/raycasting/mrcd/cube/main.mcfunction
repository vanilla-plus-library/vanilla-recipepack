# Choose a side to detect based on direction
execute if score @s[tag=!mrcd_touch_edge] twvp.rx matches 1.. if score #block_x twvp.temp <= #box_x0 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/x0
tag @s[tag=twvp.ray.touch_x_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] twvp.rx matches ..-1 if score #block_x twvp.temp >= #box_x1 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/x1
tag @s[tag=twvp.ray.touch_x_plus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] twvp.ry matches 1.. if score #block_y twvp.temp <= #box_y0 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/y0
tag @s[tag=twvp.ray.touch_y_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] twvp.ry matches ..-1 if score #block_y twvp.temp >= #box_y1 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/y1
tag @s[tag=twvp.ray.touch_y_plus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] twvp.rz matches 1.. if score #block_z twvp.temp <= #box_z0 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/z0
tag @s[tag=twvp.ray.touch_z_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] twvp.rz matches ..-1 if score #block_z twvp.temp >= #box_z1 twvp.temp run function thewii:vp_library/raycasting/mrcd/cube/z1
tag @s[tag=twvp.ray.touch_z_plus] add mrcd_touch_edge
