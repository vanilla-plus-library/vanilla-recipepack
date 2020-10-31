# SHAPED (3 slots)

# Register
execute unless score #vanilla.glass_bottle vplib.recipe matches 1.. store result score #vanilla.glass_bottle vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glass_bottle vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:glass"},{Slot:13b,id:"minecraft:glass"},{Slot:21b,id:"minecraft:glass"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glass_bottle vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.glass_bottle vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:glass_bottle",Count:3b}