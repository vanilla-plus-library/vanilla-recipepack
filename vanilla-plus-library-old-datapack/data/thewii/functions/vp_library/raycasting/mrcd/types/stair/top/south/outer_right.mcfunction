# +x
execute if score @s[tag=!mrcd_touch_edge] twvp.rx matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/x0
tag @s[tag=twvp.ray.touch_x0_01] add mrcd_touch_x_minus
tag @s[tag=twvp.ray.touch_x0_10] add mrcd_touch_x_minus
tag @s[tag=twvp.ray.touch_x0_11] add mrcd_touch_x_minus
tag @s[tag=twvp.ray.touch_x_minus] add mrcd_touch_edge
# -x
execute if score @s[tag=!mrcd_touch_edge] twvp.rx matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/stair/template/x1
tag @s[tag=twvp.ray.touch_x1_10] add mrcd_touch_x_plus
tag @s[tag=twvp.ray.touch_x1_11] add mrcd_touch_x_plus
tag @s[tag=twvp.ray.touch_x_plus] add mrcd_touch_edge
# +y
execute if score @s[tag=!mrcd_touch_edge] twvp.ry matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/y0
tag @s[tag=twvp.ray.touch_y0_01] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y_minus] add mrcd_touch_edge
# +z
execute if score @s[tag=!mrcd_touch_edge] twvp.rz matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/z0
tag @s[tag=twvp.ray.touch_z0_01] add mrcd_touch_z_minus
tag @s[tag=twvp.ray.touch_z0_11] add mrcd_touch_z_minus
tag @s[tag=twvp.ray.touch_z_minus] add mrcd_touch_edge
# -z
execute if score @s[tag=!mrcd_touch_edge] twvp.rz matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/stair/template/z1
tag @s[tag=twvp.ray.touch_z1_00] add mrcd_touch_z_plus
tag @s[tag=twvp.ray.touch_z1_01] add mrcd_touch_z_plus
tag @s[tag=twvp.ray.touch_z1_11] add mrcd_touch_z_plus
tag @s[tag=twvp.ray.touch_z_plus] add mrcd_touch_edge

# -x05
execute if score @s[tag=!mrcd_touch_edge] twvp.rx matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/stair/template/x05
tag @s[tag=twvp.ray.touch_x05_01] add mrcd_touch_x_plus
tag @s[tag=twvp.ray.touch_x_plus] add mrcd_touch_edge
# +y05
execute if score @s[tag=!mrcd_touch_edge] twvp.ry matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/y05
tag @s[tag=twvp.ray.touch_y05_00] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y05_10] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y05_11] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y_minus] add mrcd_touch_edge
# +z05
execute if score @s[tag=!mrcd_touch_edge] twvp.rz matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/z05
tag @s[tag=twvp.ray.touch_z05_00] add mrcd_touch_z_minus
tag @s[tag=twvp.ray.touch_z_minus] add mrcd_touch_edge
