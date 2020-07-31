summon minecraft:area_effect_cloud 29999999 0 4320 {Duration:1,Tags:["twvp.uuid"]}

execute if score $1.16 vp_data matches 0 store result score #lcg twvp.math run data get entity @e[type=area_effect_cloud,tag=vp_uuid,limit=1] UUIDMost 0.0000000001
execute if score $1.16 vp_data matches 1 store result score #lcg twvp.math run data get entity @e[type=area_effect_cloud,tag=vp_uuid,limit=1] UUID[0]

kill @e[type=area_effect_cloud,tag=vp_uuid,limit=1]

execute if score #lcg twvp.math matches ..-1 run scoreboard players operation #lcg twvp.math *= #-1 twvp.math