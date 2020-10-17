

scoreboard players set #target_z twvp.temp 500
function thewii:vp_library/raycasting/mrcd/calculate/z
execute if score #target_x twvp.temp matches 0..500 if score #target_y twvp.temp matches 0..500 run tag @s add mrcd_touch_z05_00
execute if score #target_x twvp.temp matches 0..500 if score #target_y twvp.temp matches 500..1000 run tag @s add mrcd_touch_z05_01
execute if score #target_x twvp.temp matches 500..1000 if score #target_y twvp.temp matches 0..500 run tag @s add mrcd_touch_z05_10
execute if score #target_x twvp.temp matches 500..1000 if score #target_y twvp.temp matches 500..1000 run tag @s add mrcd_touch_z05_11
