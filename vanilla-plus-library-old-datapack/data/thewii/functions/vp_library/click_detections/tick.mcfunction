#> thewii:vp_library/click_detections/tick

# Player

## Villager Detection
execute as @s[scores={twvp.detect_clk=1..}] at @s run function thewii:vp_library/click_detections/villager/player

## Remove villager detection
execute as @a[tag=twvp.prepared_villager,gamemode=!spectator] unless score @s twvp.detect_clk matches 1.. at @s run function thewii:vp_library/click_detections/villager/remove
execute as @a[tag=twvp.prepared_villager,gamemode=spectator] at @s run function thewii:vp_library/click_detections/villager/remove

execute as @a[scores={twvp.villager=-2146473648..}] at @s run function thewii:vp_library/click_detections/villager/talked

# Sticks
execute as @a[scores={twvp.coas=-2147483648..}] run function thewii:vp_library/click_detections/stick/clicked
execute as @a[scores={twvp.wfoas=-2147483648..}] run function thewii:vp_library/click_detections/stick/clicked

# Interval
scoreboard players add #click_detections.interval twvp.data 1
execute if score #click_detections.interval twvp.data matches 100.. run scoreboard players set #click_detections.interval twvp.data 0

execute if score #click_detections.interval twvp.data matches 0 as @e[type=minecraft:villager,tag=twvp.villager,limit=1,sort=random] run function thewii:vp_library/click_detections/villager/check