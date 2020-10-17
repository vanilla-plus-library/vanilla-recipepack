#> vplib:custom_crafting/v1/block/table/gui/main

# Move container to storage
data modify storage vplib:temp container set from block ~ ~ ~ Items


# Check holders
execute store result score #slot_holders vpcr.temp if data storage vplib:temp container[{Count:1b,tag:{vplib:{slot_holder:1b,type:1b}}}]
execute unless score #slot_holders vpcr.temp matches 17 run function vplib:custom_crafting/v1/block/table/gui/slot_holders

# Get grid slots
data modify storage vplib:temp recipeInput set from storage vplib:temp container
data remove storage vplib:temp recipeInput[{Slot:16b}]
data remove storage vplib:temp recipeInput[{tag:{vplib:{slot_holder:1b}}}]

# Get result slot
data remove storage vplib:temp containerResult
data modify storage vplib:temp containerResult set from storage vplib:temp container[{Slot:16b}]
data remove storage vplib:temp containerResult.Slot


# Check recipes if there is at least one item in the grid
scoreboard players set #recipe vpcr.temp 0
execute if data storage vplib:temp recipeInput[0] run function vplib:custom_crafting/v1/block/table/gui/check_recipes

# Check if result slot holder was removed(only if there are no active recipes)
execute if score #recipe vpcr.temp matches 0 unless data storage vplib:temp containerResult{Count:1b,tag:{vplib:{slot_holder:1b,type:2b}}} run function vplib:custom_crafting/v1/block/table/gui/drop/result_slot

# Save recipe
execute unless score @s vpcc.recipe = #recipe vpcr.temp run function vplib:custom_crafting/v1/block/table/gui/save_changes