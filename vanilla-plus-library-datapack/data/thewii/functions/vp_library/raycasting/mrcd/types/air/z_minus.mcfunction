## (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## z=0
## 0<=x<=1000 0<=y<=1000
## x=(-z1)x0/z0+x1
## y=(-z1)y0/z0+y1

scoreboard players set #target_z twvp.temp -1
function thewii:vp_library/raycasting/mrcd/calculate/z
execute if score #target_x twvp.temp matches 0..1000 if score #target_y twvp.temp matches 0..1000 run tag @s add mrcd_touch_edge_air
