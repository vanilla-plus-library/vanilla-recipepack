
# Calculate the intersection point coordinate
## Plane equation: x=#box_x0
## Condition of crossing: #box_y0<=y<=#box_y1 #box_z0<=z<=#box_z1


execute store result score #target_x twvp.temp run scoreboard players get #box_x0 twvp.temp
function thewii:vp_library/raycasting/mrcd/calculate/x
execute if score #target_y twvp.temp >= #box_y0 twvp.temp if score #target_y twvp.temp <= #box_y1 twvp.temp if score #target_z twvp.temp >= #box_z0 twvp.temp if score #target_z twvp.temp <= #box_z1 twvp.temp run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["mrcd_touch_mark","mrcd_touch_cube_edge","mrcd_touch_mark_new","mrcd_touch_x_minus"]}

execute as @e[tag=twvp.ray.touch_mark_new] run function thewii:vp_library/raycasting/mrcd/move
tag @e[tag=twvp.ray.touch_mark_new] remove mrcd_touch_mark_new