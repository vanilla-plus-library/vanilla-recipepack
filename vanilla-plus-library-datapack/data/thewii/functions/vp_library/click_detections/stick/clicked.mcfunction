data modify storage thewii:vp_library/temp item set from entity @s SelectedItem
execute at @s run function #thewii:vp_library/click_detections/clicked_stick
scoreboard players reset @s twvp.coas
scoreboard players reset @s twvp.wfoas