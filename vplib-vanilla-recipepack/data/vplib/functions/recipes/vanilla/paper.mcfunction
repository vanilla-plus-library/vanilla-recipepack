# SHAPED (3 slots)

# Register
execute unless score #vanilla.paper vplib.recipe matches 1.. store result score #vanilla.paper vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:sugar_cane"},{Slot:3b,id:"minecraft:sugar_cane"},{Slot:4b,id:"minecraft:sugar_cane"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.paper vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:sugar_cane"},{Slot:12b,id:"minecraft:sugar_cane"},{Slot:13b,id:"minecraft:sugar_cane"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.paper vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:sugar_cane"},{Slot:21b,id:"minecraft:sugar_cane"},{Slot:22b,id:"minecraft:sugar_cane"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.paper vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.paper vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:paper",Count:3b}