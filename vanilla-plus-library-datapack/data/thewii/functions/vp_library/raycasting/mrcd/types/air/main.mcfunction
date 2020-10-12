# Choose a side to detect based on direction
execute if score @s[tag=!mrcd_touch_edge_air] twvp.rx matches 1.. run function thewii:vp_library/raycasting/mrcd/types/air/x_plus
execute if score @s[tag=!mrcd_touch_edge_air] twvp.rx matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/air/x_minus
execute if score @s[tag=!mrcd_touch_edge_air] twvp.ry matches 1.. run function thewii:vp_library/raycasting/mrcd/types/air/y_plus
execute if score @s[tag=!mrcd_touch_edge_air] twvp.ry matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/air/y_minus
execute if score @s[tag=!mrcd_touch_edge_air] twvp.rz matches 1.. run function thewii:vp_library/raycasting/mrcd/types/air/z_plus
execute if score @s[tag=!mrcd_touch_edge_air] twvp.rz matches ..-1 run function thewii:vp_library/raycasting/mrcd/types/air/z_minus