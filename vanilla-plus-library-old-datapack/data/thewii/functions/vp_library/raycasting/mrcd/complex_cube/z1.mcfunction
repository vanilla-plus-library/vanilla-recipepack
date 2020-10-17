
# Calculate the intersection point coordinate
## Plane equation: z=#box_z1
## Condition of crossing: #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1


execute store result score #target_z twvp.temp run scoreboard players get #box_z1 twvp.temp
function thewii:vp_library/raycasting/mrcd/calculate/z
execute if score #target_x twvp.temp >= #box_x0 twvp.temp if score #target_x twvp.temp <= #box_x1 twvp.temp if score #target_y twvp.temp >= #box_y0 twvp.temp if score #target_y twvp.temp <= #box_y1 twvp.temp run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["mrcd_touch_mark","mrcd_touch_cube_edge","mrcd_touch_mark_new","mrcd_touch_z_plus"]}

execute as @e[tag=twvp.ray.touch_mark_new] run function thewii:vp_library/raycasting/mrcd/move
tag @e[tag=twvp.ray.touch_mark_new] remove mrcd_touch_mark_new