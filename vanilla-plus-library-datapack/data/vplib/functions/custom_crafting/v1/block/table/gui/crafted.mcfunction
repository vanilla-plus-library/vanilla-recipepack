#> vplib:custom_crafting/v1/block/table/gui/crafted
#say DEBUG Crafted.

# Reset ignore list
data remove storage vplib:temp ignoreSlot

# Call crafted hook(allow datapacks to execute extra functionality in a crafting)
scoreboard players operation #recipe vpcr.temp = @s vpcc.saved
scoreboard players set #crafted vpcr.temp 1
scoreboard players set #button.craft_all vpcr.temp 0
function #vplib:custom_crafting/api/table/crafted

# Consume grid items(default)
execute unless data storage vplib:temp {ignoreSlot:[2b]} if data storage vplib:temp recipeInput[{Slot:2b}] store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run data get storage vplib:temp container[{Slot:2b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[3b]} if data storage vplib:temp recipeInput[{Slot:3b}] store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run data get storage vplib:temp container[{Slot:3b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[4b]} if data storage vplib:temp recipeInput[{Slot:4b}] store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run data get storage vplib:temp container[{Slot:4b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[11b]} if data storage vplib:temp recipeInput[{Slot:11b}] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run data get storage vplib:temp container[{Slot:11b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[12b]} if data storage vplib:temp recipeInput[{Slot:12b}] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run data get storage vplib:temp container[{Slot:12b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[13b]} if data storage vplib:temp recipeInput[{Slot:13b}] store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run data get storage vplib:temp container[{Slot:13b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[20b]} if data storage vplib:temp recipeInput[{Slot:20b}] store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run data get storage vplib:temp container[{Slot:20b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[21b]} if data storage vplib:temp recipeInput[{Slot:21b}] store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run data get storage vplib:temp container[{Slot:21b}].Count 0.9999999999
execute unless data storage vplib:temp {ignoreSlot:[22b]} if data storage vplib:temp recipeInput[{Slot:22b}] store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run data get storage vplib:temp container[{Slot:22b}].Count 0.9999999999

# Update container
data modify storage vplib:temp container set from block ~ ~ ~ Items

# Set crafted score
scoreboard players set #crafted vpcr.temp 1

# Force updates
scoreboard players set #update_grid vpcr.temp 1
scoreboard players set #update_result vpcr.temp 1