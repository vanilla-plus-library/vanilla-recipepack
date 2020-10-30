#> vplib:click_detection/v1/load/load
# From: 'vplib:click_detection/v1/load/resolve'
# Name: Vanilla+ Library: Click Detection
# Description: Click Detection module for the library.
# Version: 1

# VERSION Set storage

## Current
execute store result storage vplib:data modules.click_detection.version.current int 1 run scoreboard players get #vplib.click_detection.current vplib.load

## Breaking
execute store result storage vplib:data modules.click_detection.version.breaking int 1 run scoreboard players get #vplib.click_detection.breaking vplib.load

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Click Detection v1","color":"white","bold":false}]


# Setup
scoreboard objectives add vplib.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add vplib.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add vplib.villager minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add twvp.detect_clk dummy
scoreboard objectives add twvp.clk_precis dummy