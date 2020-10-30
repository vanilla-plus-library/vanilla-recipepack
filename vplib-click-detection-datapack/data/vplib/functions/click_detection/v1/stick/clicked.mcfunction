#> vplib:click_detection/v1/stick/clicked

# Reset scores
scoreboard players reset @s vplib.coas
scoreboard players reset @s vplib.wfoas

# Get mainhand
data remove storage vplib:temp weapon
data modify storage vplib:temp weapon.mainhand set from entity @s SelectedItem
data modify storage vplib:temp weapon.offhand set from entity @s Inventory[{Slot:-106b}]

# Call function tag
execute at @s run function #vplib:click_detection/api/clicked_stick