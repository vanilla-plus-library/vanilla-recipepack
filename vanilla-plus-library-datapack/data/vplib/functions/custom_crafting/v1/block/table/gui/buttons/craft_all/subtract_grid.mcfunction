#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/subtract_grid

# Get grid count
execute store result score #grid0 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:2b}].Count
execute store result score #grid1 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:3b}].Count
execute store result score #grid2 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:4b}].Count
execute store result score #grid3 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:11b}].Count
execute store result score #grid4 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:12b}].Count
execute store result score #grid5 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:13b}].Count
execute store result score #grid6 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:20b}].Count
execute store result score #grid7 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:21b}].Count
execute store result score #grid8 vpcr.temp run data get storage vplib:temp containerGrid[{Slot:22b}].Count

# Store consumed count
execute if score #grid0 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[2b]} store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation #grid0 vpcr.temp -= #crafted vpcr.temp
execute if score #grid1 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[3b]} store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players operation #grid1 vpcr.temp -= #crafted vpcr.temp
execute if score #grid2 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[4b]} store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players operation #grid2 vpcr.temp -= #crafted vpcr.temp
execute if score #grid3 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[11b]} store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation #grid3 vpcr.temp -= #crafted vpcr.temp
execute if score #grid4 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[12b]} store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players operation #grid4 vpcr.temp -= #crafted vpcr.temp
execute if score #grid5 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[13b]} store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players operation #grid5 vpcr.temp -= #crafted vpcr.temp
execute if score #grid6 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[20b]} store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players operation #grid6 vpcr.temp -= #crafted vpcr.temp
execute if score #grid7 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[21b]} store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players operation #grid7 vpcr.temp -= #crafted vpcr.temp
execute if score #grid8 vpcr.temp matches 1.. unless data storage vplib:temp {ignoreSlot:[22b]} store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players operation #grid8 vpcr.temp -= #crafted vpcr.temp

# Force updates
scoreboard players set #update_grid vpcr.temp 1
scoreboard players set #update_result vpcr.temp 1