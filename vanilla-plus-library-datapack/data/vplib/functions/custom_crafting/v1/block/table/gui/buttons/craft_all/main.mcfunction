#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/main

# Get grid
function vplib:custom_crafting/v1/block/table/general/get_grid

# Get amount that can be crafted
data modify storage vplib:temp array set from storage vplib:temp recipeInput
scoreboard players set #minimum vpcr.temp 64
function vplib:custom_crafting/v1/block/table/general/get_min_count

# DEBUG Craft all amount
#tellraw @a ["Craftings: ",{"score":{"name":"#minimum","objective": "vpcr.temp"}}]

# Multiply single recipe output by the number of craftings
execute store result score #output vpcr.temp run data get storage vplib:temp storedData.recipeOutput.Count
scoreboard players operation #output vpcr.temp *= #minimum vpcr.temp

# DEBUG Craft all amount
#tellraw @a ["Output: ",{"score":{"name":"#output","objective": "vpcr.temp"}}]

# Start
setblock ~ 255 ~ minecraft:yellow_shulker_box
scoreboard players set #slot vpcr.temp -1
scoreboard players set #127 vpcr.temp 127

# Loop
function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/loop

# Call players
scoreboard players set #found_player vpcr.temp 0
execute as @a[distance=..12] run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/check

execute if score #found_player vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/subtract_grid

# Finish
setblock ~ 255 ~ minecraft:air