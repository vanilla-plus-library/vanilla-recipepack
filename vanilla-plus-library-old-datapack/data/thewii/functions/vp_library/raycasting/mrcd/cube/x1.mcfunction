## x=#box_x1
## #box_y0<=y<=#box_y1 #box_z0<=z<=#box_z1

# Calculate the intersection point coordinate
## Plane equation: x=#box_x1
## Condition of crossing: #box_y0<=y<=#box_y1 #box_z0<=z<=#box_z1

execute store result score #target_x twvp.temp run scoreboard players get #box_x1 twvp.temp
function thewii:vp_library/raycasting/mrcd/calculate/x
execute if score #target_y twvp.temp >= #box_y0 twvp.temp if score #target_y twvp.temp <= #box_y1 twvp.temp if score #target_z twvp.temp >= #box_z0 twvp.temp if score #target_z twvp.temp <= #box_z1 twvp.temp run tag @s add mrcd_touch_x_plus