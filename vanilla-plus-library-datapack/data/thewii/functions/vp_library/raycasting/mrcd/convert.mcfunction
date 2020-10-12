# Find the nearnest block marker
tag @e[tag=twvp.ray.touch_mark,sort=nearest,limit=1] add mrcd_temp
# Copy the tag on the nearest block marker
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_x_plus] run tag @s add mrcd_touch_x_plus
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_x_minus] run tag @s add mrcd_touch_x_minus
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_y_plus] run tag @s add mrcd_touch_y_plus
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_y_minus] run tag @s add mrcd_touch_y_minus
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_z_plus] run tag @s add mrcd_touch_z_plus
execute if entity @e[tag=twvp.ray.temp,tag=twvp.ray.touch_z_minus] run tag @s add mrcd_touch_z_minus
# Get the position of the nearest block marker
execute store result score #target_x twvp.temp run data get entity @e[tag=twvp.ray.temp,limit=1] Pos[0] 1000
execute store result score #target_y twvp.temp run data get entity @e[tag=twvp.ray.temp,limit=1] Pos[1] 1000
execute store result score #target_z twvp.temp run data get entity @e[tag=twvp.ray.temp,limit=1] Pos[2] 1000
scoreboard players operation #target_x twvp.temp %= #1000 twvp.math
scoreboard players operation #target_y twvp.temp %= #1000 twvp.math
scoreboard players operation #target_z twvp.temp %= #1000 twvp.math
# Kill all the block markers
kill @e[tag=twvp.ray.touch_mark]
