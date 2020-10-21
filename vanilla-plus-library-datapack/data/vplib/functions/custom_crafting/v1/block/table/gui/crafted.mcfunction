#> vplib:custom_crafting/v1/block/table/gui/crafted
#say DEBUG Crafted.

# Consume grid items
execute if data storage vplib:temp recipeInput[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run data get storage vplib:temp container[{Slot:2b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:3b}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run data get storage vplib:temp container[{Slot:3b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:4b}] store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run data get storage vplib:temp container[{Slot:4b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:11b}] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run data get storage vplib:temp container[{Slot:11b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:12b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run data get storage vplib:temp container[{Slot:12b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:13b}] store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run data get storage vplib:temp container[{Slot:13b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:20b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run data get storage vplib:temp container[{Slot:20b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:21b}] store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run data get storage vplib:temp container[{Slot:21b}].Count 0.9999999999
execute if data storage vplib:temp recipeInput[{Slot:22b}] store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run data get storage vplib:temp container[{Slot:22b}].Count 0.9999999999

# Update container
data modify storage vplib:temp container set from block ~ ~ ~ Items

# Set crafted status
scoreboard players set #crafted vpcr.temp 1

# Force to update the grid
scoreboard players set #update_grid vpcr.temp 1

# Force to update result
scoreboard players set #update_result vpcr.temp 1