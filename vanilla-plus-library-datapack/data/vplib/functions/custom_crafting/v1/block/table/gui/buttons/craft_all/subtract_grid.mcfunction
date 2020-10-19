#> vplib:custom_crafting/v1/block/table/gui/button/craft_all/subtract_grid

# Get grid count
execute store result score #grid0 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:2b}].Count
execute store result score #grid1 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:3b}].Count
execute store result score #grid2 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:4b}].Count
execute store result score #grid3 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:11b}].Count
execute store result score #grid4 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:12b}].Count
execute store result score #grid5 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:13b}].Count
execute store result score #grid6 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:20b}].Count
execute store result score #grid7 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:21b}].Count
execute store result score #grid8 vpcr.temp run data get storage vplib:temp recipeInput[{Slot:22b}].Count

# Store consumed count
execute if score #grid0 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation #grid0 vpcr.temp -= #minimum vpcr.temp
execute if score #grid1 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players operation #grid1 vpcr.temp -= #minimum vpcr.temp
execute if score #grid2 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players operation #grid2 vpcr.temp -= #minimum vpcr.temp
execute if score #grid3 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation #grid3 vpcr.temp -= #minimum vpcr.temp
execute if score #grid4 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players operation #grid4 vpcr.temp -= #minimum vpcr.temp
execute if score #grid5 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players operation #grid5 vpcr.temp -= #minimum vpcr.temp
execute if score #grid6 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players operation #grid6 vpcr.temp -= #minimum vpcr.temp
execute if score #grid7 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players operation #grid7 vpcr.temp -= #minimum vpcr.temp
execute if score #grid8 vpcr.temp matches 1.. store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players operation #grid8 vpcr.temp -= #minimum vpcr.temp

# Set crafted status
scoreboard players set #crafted vpcr.temp 1

# Force a grid update
scoreboard players set #update_grid vpcr.temp 1

# Force to show result
scoreboard players set #show_result vpcr.temp 1