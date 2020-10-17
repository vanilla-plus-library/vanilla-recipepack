# Set total distance
execute store result score #total_x twvp.temp run scoreboard players get @s twvp.rx
execute store result score #total_y twvp.temp run scoreboard players get @s twvp.ry
execute store result score #total_z twvp.temp run scoreboard players get @s twvp.rz

# Recurse
execute at @s run function thewii:vp_library/raycasting/mrcd/recurse