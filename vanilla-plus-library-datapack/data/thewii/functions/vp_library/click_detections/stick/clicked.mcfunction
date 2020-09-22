# Reset scores
scoreboard players reset @s twvp.coas
scoreboard players reset @s twvp.wfoas

# Get mainhand
data remove storage thewii:vp_library/temp mainhand
data modify storage thewii:vp_library/temp mainhand set from entity @s SelectedItem

# Call function tag
execute at @s run function #thewii:vp_library/click_detections/clicked_stick