# SHAPED (3 slots)

# Register
execute unless score #vanilla.cookie vplib.recipe matches 1.. store result score #vanilla.cookie vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:wheat"},{Slot:3b,id:"minecraft:cocoa_beans"},{Slot:4b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cookie vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:wheat"},{Slot:12b,id:"minecraft:cocoa_beans"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cookie vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:cocoa_beans"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cookie vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.cookie vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:cookie",Count:8b}