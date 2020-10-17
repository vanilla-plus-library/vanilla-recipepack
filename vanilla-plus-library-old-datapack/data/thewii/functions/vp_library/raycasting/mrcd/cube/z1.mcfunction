# z=#box_z1
## #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1

# Calculate the intersection point coordinate
## Plane equation: z=#box_z1
## Condition of crossing: #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1


execute store result score #target_z twvp.temp run scoreboard players get #box_z1 twvp.temp
function thewii:vp_library/raycasting/mrcd/calculate/z
execute if score #target_x twvp.temp >= #box_x0 twvp.temp if score #target_x twvp.temp <= #box_x1 twvp.temp if score #target_y twvp.temp >= #box_y0 twvp.temp if score #target_y twvp.temp <= #box_y1 twvp.temp run tag @s add mrcd_touch_z_plus