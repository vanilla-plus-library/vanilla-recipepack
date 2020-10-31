# SHAPED (2 slots)

# Register
execute unless score #vanilla.shears vplib.recipe matches 1.. store result score #vanilla.shears vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shears vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shears vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shears vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shears vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.shears vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:shears",Count:1b,tag:{Damage:0}}