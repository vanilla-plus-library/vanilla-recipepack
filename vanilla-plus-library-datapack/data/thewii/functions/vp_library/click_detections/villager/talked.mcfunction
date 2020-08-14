data modify storage thewii:vp_library/temp selectedItem set from entity @s SelectedItem

execute if entity @s[tag=twvp.player.detect_click] run function #thewii:vp_library/click_detections/clicked_villager

scoreboard players reset @s twvp.villager

data remove storage thewii:vp_library/temp selectedItem