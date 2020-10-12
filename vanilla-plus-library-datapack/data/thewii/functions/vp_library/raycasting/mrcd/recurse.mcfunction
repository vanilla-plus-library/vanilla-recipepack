# tag Clear tags from last tick
tag @s[tag=twvp.ray.touch_edge] remove mrcd_touch_edge
tag @s[tag=twvp.ray.touch_edge_air] remove mrcd_touch_edge_air
tag @s[tag=twvp.ray.touch_edge_complex] remove mrcd_touch_edge_complex
tag @s[tag=twvp.ray.detected] remove mrcd_detected

# Get the coordinate of current block
# #block_x,y,z: 0-1000，
# #block_corner_x,y,z: (1000)
# #block_x,y,z: range from 0-1000, relative coordinate in a block
# #block_corner_x,y,z: absolute coordinate of current block (multiply by 1000)

execute store result score #block_x twvp.temp run data get entity @s Pos[0] 1000
execute store result score #block_y twvp.temp run data get entity @s Pos[1] 1000
execute store result score #block_z twvp.temp run data get entity @s Pos[2] 1000

execute store result score #block_corner_x twvp.temp run scoreboard players get #block_x twvp.temp
execute store result score #block_corner_y twvp.temp run scoreboard players get #block_y twvp.temp
execute store result score #block_corner_z twvp.temp run scoreboard players get #block_z twvp.temp

scoreboard players operation #block_x twvp.temp %= #1000 twvp.math
scoreboard players operation #block_y twvp.temp %= #1000 twvp.math
scoreboard players operation #block_z twvp.temp %= #1000 twvp.math

scoreboard players operation #block_corner_x twvp.temp -= #block_x twvp.temp
scoreboard players operation #block_corner_y twvp.temp -= #block_y twvp.temp
scoreboard players operation #block_corner_z twvp.temp -= #block_z twvp.temp

execute if score #block_x twvp.temp matches 999 run scoreboard players set #block_x twvp.temp 1000
execute if score #block_y twvp.temp matches 999 run scoreboard players set #block_y twvp.temp 1000
execute if score #block_z twvp.temp matches 999 run scoreboard players set #block_z twvp.temp 1000


# Block collision test

## Skip if current block is air
execute if block ~ ~ ~ #thewii:vp_library/raycasting/air_like run tag @s add mrcd_detected

## Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=!mrcd_detected,tag=twvp.ray.bullet] if block ~ ~ ~ #thewii:vp_library/raycasting/player_can_pass run tag @s add mrcd_detected

## Test if current block can't be passed by player
execute if entity @s[tag=!mrcd_detected] unless block ~ ~ ~ #thewii:vp_library/raycasting/player_can_pass run function thewii:vp_library/raycasting/mrcd/category/solid

## Test if current block can be passed by player
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #thewii:vp_library/raycasting/player_can_pass run function thewii:vp_library/raycasting/mrcd/category/player_can_pass

## Test if current block is undefined (treated as a full block) 
execute if entity @s[tag=!mrcd_detected] run function thewii:vp_library/raycasting/mrcd/types/solid

## Move to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function thewii:vp_library/raycasting/mrcd/types/air/main

# Convert the complex block markers to #target_x,y,z
execute if entity @s[tag=twvp.ray.touch_edge_complex] run function thewii:vp_library/raycasting/mrcd/convert

# dxdydz bug
# Entity collision test. Executed if there are any entities in this block. Exist dxdydz bug.
execute at @s[tag=twvp.ray.entity] align xyz if entity @e[type=#thewii:vp_library/raycasting/target,dx=0,dy=0,dz=0] run function thewii:vp_library/raycasting/mrcd/entity


# Move marker

## Convert #target_x,y,z to a coordinate which based on the coordinate of marker (before based on the coordinate of block corner)
scoreboard players operation #target_x twvp.temp -= #block_x twvp.temp
scoreboard players operation #target_y twvp.temp -= #block_y twvp.temp
scoreboard players operation #target_z twvp.temp -= #block_z twvp.temp

## Which is longer? Length of #targetx,y,z or #total_x,y,z?
execute store result score #var0 twvp.temp run scoreboard players get #total_x twvp.temp
execute store result score #var1 twvp.temp run scoreboard players get #target_x twvp.temp

execute store result score #var2 twvp.temp run scoreboard players get #total_y twvp.temp
execute store result score #var3 twvp.temp run scoreboard players get #target_y twvp.temp

execute store result score #var4 twvp.temp run scoreboard players get #total_z twvp.temp
execute store result score #var5 twvp.temp run scoreboard players get #target_z twvp.temp

execute if score #var0 twvp.temp matches ..-1 run scoreboard players operation #var0 twvp.temp *= #-1 twvp.math
execute if score #var1 twvp.temp matches ..-1 run scoreboard players operation #var1 twvp.temp *= #-1 twvp.math
execute if score #var2 twvp.temp matches ..-1 run scoreboard players operation #var2 twvp.temp *= #-1 twvp.math
execute if score #var3 twvp.temp matches ..-1 run scoreboard players operation #var3 twvp.temp *= #-1 twvp.math
execute if score #var4 twvp.temp matches ..-1 run scoreboard players operation #var4 twvp.temp *= #-1 twvp.math
execute if score #var5 twvp.temp matches ..-1 run scoreboard players operation #var5 twvp.temp *= #-1 twvp.math

scoreboard players operation #var0 twvp.temp -= #var1 twvp.temp
scoreboard players operation #var2 twvp.temp -= #var3 twvp.temp
scoreboard players operation #var4 twvp.temp -= #var5 twvp.temp

execute if score #var0 twvp.temp matches ..0 if score #var2 twvp.temp matches ..0 if score #var4 twvp.temp matches ..0 run scoreboard players set #var0 twvp.temp -1
execute if score #var0 twvp.temp matches 0.. if score #var2 twvp.temp matches 0.. if score #var4 twvp.temp matches 0.. run scoreboard players set #var0 twvp.temp 1

### If length of #total_x,y,z is less than length of #target_x,y,z, than #targetx,y,z = #total_x,y,z
execute if score #var0 twvp.temp matches ..0 run scoreboard players operation #target_x twvp.temp = #total_x twvp.temp
execute if score #var0 twvp.temp matches ..0 run scoreboard players operation #target_y twvp.temp = #total_y twvp.temp
execute if score #var0 twvp.temp matches ..0 run scoreboard players operation #target_z twvp.temp = #total_z twvp.temp

### If length of #total_x,y,z is greater than length of #target_x,y,z, than #total_x,y,z -= #targetx,y,z
execute if score #var0 twvp.temp matches 1.. run scoreboard players operation #total_x twvp.temp -= #target_x twvp.temp
execute if score #var0 twvp.temp matches 1.. run scoreboard players operation #total_y twvp.temp -= #target_y twvp.temp
execute if score #var0 twvp.temp matches 1.. run scoreboard players operation #total_z twvp.temp -= #target_z twvp.temp

## Move!
scoreboard players operation #target_x twvp.temp += #block_x twvp.temp
scoreboard players operation #target_y twvp.temp += #block_y twvp.temp
scoreboard players operation #target_z twvp.temp += #block_z twvp.temp
execute if entity @s[tag=!mrcd_touch_entity] run function thewii:vp_library/raycasting/mrcd/move

## If total length is less than target length, it means that total limit is reached and should stop moving forward
execute if score #var0 twvp.temp matches ..0 run tag @s[tag=twvp.ray.touch_edge] remove mrcd_touch_edge

## If total length is greater than target length, it means that total limit is not reached and should keep moving forward
execute if score #var0 twvp.temp matches 1.. if entity @s[tag=!mrcd_touch_edge] at @s run function thewii:vp_library/raycasting/mrcd/recurse
