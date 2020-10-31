# SHAPED (4 slots)

# Register
execute unless score #vanilla.polished_granite vplib.recipe matches 1.. store result score #vanilla.polished_granite vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:granite"},{Slot:3b,id:"minecraft:granite"},{Slot:11b,id:"minecraft:granite"},{Slot:12b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:granite"},{Slot:4b,id:"minecraft:granite"},{Slot:12b,id:"minecraft:granite"},{Slot:13b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:granite"},{Slot:12b,id:"minecraft:granite"},{Slot:20b,id:"minecraft:granite"},{Slot:21b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:granite"},{Slot:13b,id:"minecraft:granite"},{Slot:21b,id:"minecraft:granite"},{Slot:22b,id:"minecraft:granite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_granite vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_granite vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_granite",Count:4b}