#> thewii:vp_library/click_detections/villager/talked

# Reset trigger
scoreboard players reset @s twvp.villager

# Copy mainhand
data remove storage thewii:vp_library/temp mainhand
data modify storage thewii:vp_library/temp mainhand set from entity @s SelectedItem

# Call function tag
execute if entity @s[tag=twvp.player.detect_click] run function #thewii:vp_library/click_detections/clicked_villager