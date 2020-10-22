#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/loop

# Get output
data modify storage vplib:temp item set from storage vplib:temp savedData.recipeOutput

# Store data
scoreboard players operation #count vpcr.temp = #output vpcr.temp
execute store result storage vplib:temp item.Count byte 1 run scoreboard players operation #count vpcr.temp < #127 vpcr.math
execute store result storage vplib:temp item.Slot byte 1 run scoreboard players add #slot vpcr.temp 1

# Append
data modify storage vplib:temp array append from storage vplib:temp item

# Loop
scoreboard players operation #output vpcr.temp -= #count vpcr.temp
execute if score #output vpcr.temp matches 1.. run function vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/loop