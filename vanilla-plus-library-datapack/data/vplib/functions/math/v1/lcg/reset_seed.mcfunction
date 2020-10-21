#> vplib:math/v1/lcg/reset_seed

# Summon AEC
execute at @e[limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["vplib.uuid"]}

# Store UUID
execute store result score #lcg vpcr.math run data get entity @e[type=area_effect_cloud,tag=vplib.uuid,limit=1] UUID[0]

# Kill AEC
kill @e[type=area_effect_cloud,tag=vplib.uuid,limit=1]

# Invert if negative
execute if score #lcg vpcr.math matches ..-1 run scoreboard players operation #lcg vpcr.math *= #-1 vpcr.math