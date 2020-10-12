# +y
execute if score @s[tag=!mrcd_touch_edge] twvp.ry matches 0.. run function thewii:vp_library/raycasting/mrcd/types/stair/template/y0
tag @s[tag=twvp.ray.touch_y0_00] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y0_01] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y0_10] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y0_11] add mrcd_touch_y_minus
tag @s[tag=twvp.ray.touch_y_minus] add mrcd_touch_edge


execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=east] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/east/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=west] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/west/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=north] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/north/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=south] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/south/main
