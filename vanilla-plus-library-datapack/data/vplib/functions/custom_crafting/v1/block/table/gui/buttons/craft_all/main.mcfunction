#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/main

# Get minimum amount that can be crafted
data modify storage vplib:temp array set from storage vplib:temp recipeInput
scoreboard players set #minimum vpcr.temp 64

function vplib:custom_crafting/v1/block/table/general/get_min_count


# Multiply single recipe output by the number of craftings
execute store result score #output vpcr.temp run data get storage vplib:temp storedData.recipeOutput.Count
scoreboard players operation #output vpcr.temp *= #minimum vpcr.temp


# Generate item array
scoreboard players set #127 vpcr.temp 127

data modify storage vplib:temp array set value []
function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/loop


# Search players
scoreboard players set #found_player vpcr.temp 0
execute as @a[distance=..12] run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/search_player

# Subtract grid if player was found
execute if score #found_player vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/subtract_grid