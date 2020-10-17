# Move to #targetx,y,z
execute store result score #target_temp_x twvp.temp run scoreboard players get #target_x twvp.temp
execute store result score #target_temp_y twvp.temp run scoreboard players get #target_y twvp.temp
execute store result score #target_temp_z twvp.temp run scoreboard players get #target_z twvp.temp

scoreboard players operation #target_x twvp.temp += #block_corner_x twvp.temp
scoreboard players operation #target_y twvp.temp += #block_corner_y twvp.temp
scoreboard players operation #target_z twvp.temp += #block_corner_z twvp.temp

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #target_x twvp.temp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #target_y twvp.temp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #target_z twvp.temp


# -1 means it reached the block on the negative side
execute if score #target_temp_x twvp.temp matches -1 at @s run tp @s ~0.0009 ~ ~ ~ ~
execute if score #target_temp_y twvp.temp matches -1 at @s run tp @s ~ ~0.0009 ~ ~ ~
execute if score #target_temp_z twvp.temp matches -1 at @s run tp @s ~ ~ ~0.0009 ~ ~


# 1000 means it reached the block on the positive side
execute if entity @s[tag=twvp.ray.touch_edge] if score #target_temp_x twvp.temp matches 1000 at @s run tp @s ~-0.00001 ~ ~ ~ ~
execute if entity @s[tag=twvp.ray.touch_edge] if score #target_temp_y twvp.temp matches 1000 at @s run tp @s ~ ~-0.00001 ~ ~ ~
execute if entity @s[tag=twvp.ray.touch_edge] if score #target_temp_z twvp.temp matches 1000 at @s run tp @s ~ ~ ~-0.00001 ~ ~