#> vplib:recipes/crafted/dense_beacon
# This function manages the removal of items in the grid in a recipe with multiple count. The recipe
# uses all 9 slots, remove 

# Set constants
scoreboard players set #2 vplib.math 2
scoreboard players set #4 vplib.math 4


# Ignore slots
# The lib would decrease the count from every item in the grid by default, so we append
# the slots to this blacklist.
data modify storage vplib:temp ignoredSlots set value [2b,3b,4b,11b,12b,13b,20b,21b,22b]


# Get item counts
execute store result score #grid0 vplib.temp run data get storage vplib:temp containerGrid[{Slot:2b}].Count
execute store result score #grid1 vplib.temp run data get storage vplib:temp containerGrid[{Slot:3b}].Count
execute store result score #grid2 vplib.temp run data get storage vplib:temp containerGrid[{Slot:4b}].Count
execute store result score #grid3 vplib.temp run data get storage vplib:temp containerGrid[{Slot:11b}].Count
execute store result score #grid4 vplib.temp run data get storage vplib:temp containerGrid[{Slot:12b}].Count
execute store result score #grid5 vplib.temp run data get storage vplib:temp containerGrid[{Slot:13b}].Count
execute store result score #grid6 vplib.temp run data get storage vplib:temp containerGrid[{Slot:20b}].Count
execute store result score #grid7 vplib.temp run data get storage vplib:temp containerGrid[{Slot:21b}].Count
execute store result score #grid8 vplib.temp run data get storage vplib:temp containerGrid[{Slot:22b}].Count


# Move item counts to another score and nivelate the count(number of craftings available for each slot)
# Normally the craft all button would automatically give us the crafted amount on (#crafted vplib.temp),
# but this recipe requires custom count so we need to do this by ourselves.
scoreboard players operation #crafted0 vplib.temp = #grid0 vplib.temp
scoreboard players operation #crafted1 vplib.temp = #grid1 vplib.temp
scoreboard players operation #crafted2 vplib.temp = #grid2 vplib.temp
scoreboard players operation #crafted3 vplib.temp = #grid3 vplib.temp
scoreboard players operation #crafted4 vplib.temp = #grid4 vplib.temp
scoreboard players operation #crafted5 vplib.temp = #grid5 vplib.temp
scoreboard players operation #crafted6 vplib.temp = #grid6 vplib.temp
scoreboard players operation #crafted7 vplib.temp = #grid7 vplib.temp
scoreboard players operation #crafted8 vplib.temp = #grid8 vplib.temp

scoreboard players operation #crafted0 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted1 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted2 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted3 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted4 vplib.temp /= #4 vplib.math
scoreboard players operation #crafted5 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted6 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted7 vplib.temp /= #2 vplib.math
scoreboard players operation #crafted8 vplib.temp /= #2 vplib.math


# Get the lowest number of craftings of all the grid
scoreboard players operation #minimum vplib.temp = #crafted0 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted1 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted2 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted3 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted4 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted5 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted6 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted7 vplib.temp
scoreboard players operation #minimum vplib.temp < #crafted8 vplib.temp

# Overwrite minimum if not crafting all(it would be better if all commands above except for the ignore
# slots were inside another function and only executed if the crafting was activated by the craft all
# button, but scoreboard commands are incredibly fast and we compact everything inside a single file.
execute if score #button.craft_all vplib.temp matches 0 run scoreboard players set #minimum vplib.temp 1

# Set recipe crafted amount(this is the score that defines how many times the lib has to multiply the output count)
scoreboard players operation #crafted vplib.temp = #minimum vplib.temp

# Get count to discount from each slot
scoreboard players operation #discount0 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount1 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount2 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount3 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount4 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount5 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount6 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount7 vplib.temp = #minimum vplib.temp
scoreboard players operation #discount8 vplib.temp = #minimum vplib.temp

scoreboard players operation #discount0 vplib.temp *= #2 vplib.math
scoreboard players operation #discount1 vplib.temp *= #2 vplib.math
scoreboard players operation #discount2 vplib.temp *= #2 vplib.math
scoreboard players operation #discount3 vplib.temp *= #2 vplib.math
scoreboard players operation #discount4 vplib.temp *= #4 vplib.math
scoreboard players operation #discount5 vplib.temp *= #2 vplib.math
scoreboard players operation #discount6 vplib.temp *= #2 vplib.math
scoreboard players operation #discount7 vplib.temp *= #2 vplib.math
scoreboard players operation #discount8 vplib.temp *= #2 vplib.math


# Store consumed count(the slot count subtracted by the discount amount calculated above for each slot)
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players operation #grid0 vplib.temp -= #discount0 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players operation #grid1 vplib.temp -= #discount1 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:4b}].Count byte 1 run scoreboard players operation #grid2 vplib.temp -= #discount2 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players operation #grid3 vplib.temp -= #discount3 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players operation #grid4 vplib.temp -= #discount4 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players operation #grid5 vplib.temp -= #discount5 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players operation #grid6 vplib.temp -= #discount6 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players operation #grid7 vplib.temp -= #discount7 vplib.temp
execute store result block ~ ~ ~ Items[{Slot:22b}].Count byte 1 run scoreboard players operation #grid8 vplib.temp -= #discount8 vplib.temp