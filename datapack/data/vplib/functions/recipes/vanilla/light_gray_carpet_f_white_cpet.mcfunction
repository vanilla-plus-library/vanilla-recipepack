# SHAPED (9 slots)

# Register
execute unless score #vanilla.light_gray_carpet_f_white_cpet vplib.recipe matches 1.. store result score #vanilla.light_gray_carpet_f_white_cpet vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:white_carpet"},{Slot:3b,id:"minecraft:white_carpet"},{Slot:4b,id:"minecraft:white_carpet"},{Slot:11b,id:"minecraft:white_carpet"},{Slot:12b,id:"minecraft:light_gray_dye"},{Slot:13b,id:"minecraft:white_carpet"},{Slot:20b,id:"minecraft:white_carpet"},{Slot:21b,id:"minecraft:white_carpet"},{Slot:22b,id:"minecraft:white_carpet"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.light_gray_carpet_f_white_cpet vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.light_gray_carpet_f_white_cpet vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:light_gray_carpet",Count:8b}