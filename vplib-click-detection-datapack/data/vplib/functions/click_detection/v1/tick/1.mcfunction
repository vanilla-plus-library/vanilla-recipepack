#> vplib:click_detection/v1/tick/1

# Player

## Villager Detection
execute as @s[scores={vplib.clk_detect=1..}] at @s run function vplib:click_detection/v1/villager/player

## Remove villager detection
execute as @a[tag=vplib.click.prepared,gamemode=!spectator] unless score @s vplib.clk_detect matches 1.. at @s run function vplib:click_detection/v1/villager/remove
execute as @a[tag=vplib.click.prepared,gamemode=spectator] at @s run function vplib:click_detection/v1/villager/remove

# Sticks
execute as @a[scores={vplib.coas=-2147483648..}] run function vplib:click_detection/v1/stick/clicked
execute as @a[scores={vplib.wfoas=-2147483648..}] run function vplib:click_detection/v1/stick/clicked


# Interval
scoreboard players add #click_detections.interval vplib.data 1
execute if score #click_detections.interval vplib.data matches 100.. run scoreboard players set #click_detections.interval vplib.data 0

execute if score #click_detections.interval vplib.data matches 0 as @e[type=minecraft:villager,tag=vplib.villager,limit=1,sort=random] run function vplib:click_detection/v1/villager/check