# Villager

## Detecting
execute if score @s twvp.detect_clk matches 1.. at @s run function thewii:vp_library/click_detections/villager/player

## Remove detection
execute if entity @s[tag=twvp.prepared_villager,gamemode=!spectator] unless score @s twvp.detect_clk matches 1.. at @s run function thewii:vp_library/click_detections/villager/remove
execute if entity @s[tag=twvp.prepared_villager,gamemode=spectator] at @s run function thewii:vp_library/click_detections/villager/remove

execute if score @s twvp.villager matches -2146473648.. at @s run function thewii:vp_library/click_detections/villager/talked

# Sticks
execute if score @s twvp.coas matches -2147483648.. run function thewii:vp_library/click_detections/stick/clicked
execute if score @s twvp.wfoas matches -2147483648.. run function thewii:vp_library/click_detections/stick/clicked