
# Calculate the intersection point coordinate
## Plane equation: y=#box_y1
## Condition of crossing: #box_x0<=x<=#box_x1 #box_z0<=z<=#box_z1


execute store result score #target_y twvp.temp run scoreboard players get #box_y1 twvp.temp
function thewii:vp_library/raycasting/mrcd/calculate/y
execute if score #target_x twvp.temp >= #box_x0 twvp.temp if score #target_x twvp.temp <= #box_x1 twvp.temp if score #target_z twvp.temp >= #box_z0 twvp.temp if score #target_z twvp.temp <= #box_z1 twvp.temp run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["mrcd_touch_mark","mrcd_touch_cube_edge","mrcd_touch_mark_new","mrcd_touch_y_plus"]}

execute as @e[tag=twvp.ray.touch_mark_new] run function thewii:vp_library/raycasting/mrcd/move
tag @e[tag=twvp.ray.touch_mark_new] remove mrcd_touch_mark_new