# Villager
data modify storage thewii:vp_library/temp selectedItem set from entity @s SelectedItem

tag @s remove twvp.player.detect_click
execute if data storage thewii:vp_library/temp selectedItem.tag.ctc.traits."vplib/detect_click" run tag @s add twvp.player.detect_click

data remove storage thewii:vp_library/temp selectedItem

execute if entity @s[tag=twta.detect_click] at @s run particle flame ~ ~ ~ 0 0 0 0 10 normal


execute if entity @s[tag=twvp.player.detect_click] at @s run function thewii:vp_library/click_detections/villager/player

execute if entity @s[gamemode=!spectator,tag=!twvp.player.detect_click,tag=twvp.villager_prepared] at @s run function thewii:vp_library/click_detections/villager/remove
execute if entity @s[gamemode=spectator,tag=twvp.villager_prepared] at @s run function thewii:vp_library/click_detections/villager/remove

execute if score @s twvp.villager matches -2146473648.. at @s run function thewii:vp_library/click_detections/villager/talked

# Sticks
execute if score @s twvp.coas matches -2147483648.. run function thewii:vp_library/click_detections/stick/clicked
execute if score @s twvp.wfoas matches -2147483648.. run function thewii:vp_library/click_detections/stick/clicked