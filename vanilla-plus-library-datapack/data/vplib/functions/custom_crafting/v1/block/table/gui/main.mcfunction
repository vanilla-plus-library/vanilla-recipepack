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


# Check grid
scoreboard players set #update_data vpcr.temp 0

## Get stored data
data modify storage vplib:temp storedData set from entity @s ArmorItems[3].tag.vplib

## Check grid update
data modify storage vplib:temp compare set from storage vplib:temp storedData.recipeInput
execute store success score #update_grid vpcr.temp run data modify storage vplib:temp compare set from storage vplib:temp recipeInput

execute if score #update_grid vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/grid/update


## Result slot management
execute if data storage vplib:temp storedData.recipeInput[0] run function vplib:custom_crafting/v1/block/table/gui/result/check

## Check if result slot holder was removed(only if there are no active recipes)
execute if score @s vpcc.recipe matches 0 unless data storage vplib:temp containerResult{Count:1b,tag:{vplib:{slot_holder:1b,type:2b}}} run function vplib:custom_crafting/v1/block/table/gui/drop/result_slot


# Update
execute if score #update_data vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/update_data