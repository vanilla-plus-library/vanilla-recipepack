# Entity test
execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#thewii:vp_library/raycasting/target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#thewii:vp_library/raycasting/target,dx=0,dy=0,dz=0] add mrcd_target_entity_temp
execute if entity @e[tag=twvp.ray.target_entity_temp] run tag @s add mrcd_touch_entity
execute if entity @s[tag=twvp.ray.touch_entity] run tp @s ~ ~ ~