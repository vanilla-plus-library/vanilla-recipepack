#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/main

# Get minimum amount that can be crafted
data modify storage vplib:temp array set from storage vplib:temp recipeInput
scoreboard players set #minimum vpcr.temp 64

function vplib:custom_crafting/v1/block/table/general/get_min_count
scoreboard players operation #crafted vpcr.temp = #minimum vpcr.temp

# Reset ignore list
data remove storage vplib:temp ignoreSlot

# Call crafted hook(allow datapacks to execute extra functionality in a crafting)
scoreboard players operation #recipe vpcr.temp = @s vpcc.saved
scoreboard players set #button.craft_all vpcr.temp 1
function #vplib:custom_crafting/api/table/crafted

# Multiply single recipe output by the number of craftings
execute store result score #output vpcr.temp run data get storage vplib:temp savedData.recipeOutput.Count
scoreboard players operation #output vpcr.temp *= #crafted vpcr.temp


# Generate items
scoreboard players set #127 vpcr.math 127
data modify storage vplib:temp array set value []

scoreboard players set #slot vpcr.temp 0
function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/loop


# Search players
scoreboard players set #found_player vpcr.temp 0
execute as @a[distance=..12] run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/search_player

# Subtract grid if player was found
execute if score #found_player vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/subtract_grid