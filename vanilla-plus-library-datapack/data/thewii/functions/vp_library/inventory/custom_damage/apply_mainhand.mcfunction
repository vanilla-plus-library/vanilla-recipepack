# Set storage
execute if score #vplib.inv.use_storage twvp.temp matches 1 run data modify storage thewii:vp_library/temp damageTool set from storage thewii:vp_library/temp selectedItem
execute unless score #vplib.inv.use_storage twvp.temp matches 1 run data modify storage thewii:vp_library/temp damageTool set from entity @s SelectedItem
scoreboard players reset #vplib.inv.use_storage twvp.temp

# Universal damage function
function thewii:vp_library/inventory/custom_damage/internal/damage

# Place the item back in the inventory
data remove block 29999983 0 4320 Items
data modify block 29999983 0 4320 Items append from storage thewii:vp_library/temp damageTool
loot replace entity @s weapon.mainhand 1 mine 29999983 0 4320 air{drop_contents:1b}

# Clear storage
data remove storage thewii:vp_library/temp damageTool