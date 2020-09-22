execute as @a run function thewii:vp_library/click_detections/player

scoreboard players add #click_detections.interval twvp.data 1
execute if score #click_detections.interval twvp.data matches 100.. run scoreboard players set #click_detections.interval twvp.data 0

execute if score #click_detections.interval twvp.data matches 0 as @e[type=minecraft:villager,tag=twvp.villager,limit=1,sort=random] run function thewii:vp_library/click_detections/villager/check