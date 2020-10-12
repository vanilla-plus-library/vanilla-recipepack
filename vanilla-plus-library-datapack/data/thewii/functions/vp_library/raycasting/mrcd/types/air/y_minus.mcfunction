## (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## y=0
## 0<=x<=1000 0<=z<=1000
## x=(-y1)x0/y0+x1
## z=(-y1)z0/y0+z1

scoreboard players set #target_y twvp.temp -1
function thewii:vp_library/raycasting/mrcd/calculate/y
execute if score #target_x twvp.temp matches 0..1000 if score #target_z twvp.temp matches 0..1000 run tag @s add mrcd_touch_edge_air
