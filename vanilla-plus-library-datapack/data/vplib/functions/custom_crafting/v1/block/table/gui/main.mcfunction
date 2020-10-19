#> vplib:custom_crafting/v1/block/table/gui/main

# Reset scores
scoreboard players set #update_grid vpcr.temp 0
scoreboard players set #update_data vpcr.temp 0
scoreboard players set #show_result vpcr.temp 0
scoreboard players set #crafted vpcr.temp 0
scoreboard players set #clear_result vpcr.temp 0

# Get stored data(previous grid and result).
data modify storage vplib:temp storedData set from entity @s ArmorItems[3].tag.vplib

# Move container to storage.
data modify storage vplib:temp container set from block ~ ~ ~ Items


# Check slot holders.
execute store result score #slot_holders vpcr.temp if data storage vplib:temp container[{Count:1b,tag:{vplib:{slot_holder:1b,type:1b}}}]
execute unless score #slot_holders vpcr.temp matches 17 run function vplib:custom_crafting/v1/block/table/gui/slot_holders


# Get result slot.
function vplib:custom_crafting/v1/block/table/general/get_result


# If a recipe is active, check if current result doesn't match the expected result slot(unless the recipe changed)(forcing the command below to run).
execute if score @s vpcc.saved matches 1.. unless entity @s[tag=vplib.recipe_changed] if data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/result/compare
tag @s remove vplib.recipe_changed

# If a recipe is active, check if result slot is empty, if so complete the crafting.(force a grid update)
execute if score @s vpcc.saved matches 1.. unless data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/crafted


# Get grid slots.
function vplib:custom_crafting/v1/block/table/general/get_grid

# Check if grid slots changed between the last update, if so ask for a grid update.
execute if score #update_grid vpcr.temp matches 0 run data modify storage vplib:temp compare set from storage vplib:temp storedData.recipeInput
execute if score #update_grid vpcr.temp matches 0 store success score #update_grid vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp recipeInput

# Update grid(Checking recipes).
execute if score #update_grid vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/grid/update


# Show result(from recipe output)
execute if score #show_result vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/result/show_output

# Check if result slot holder is on place
execute if score #show_result vpcr.temp matches 0 if score @s vpcc.saved matches 0 unless data storage vplib:temp containerResult{Count:1b,tag:{vplib:{slot_holder:1b,type:2b}}} run function vplib:custom_crafting/v1/block/table/gui/drop/result_slot


# Store data
execute if score #store_data vpcr.temp matches 1 run data modify entity @s ArmorItems[3].tag.vplib set from storage vplib:temp storedData