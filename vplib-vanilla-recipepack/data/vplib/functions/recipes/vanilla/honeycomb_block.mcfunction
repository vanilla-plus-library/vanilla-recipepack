# SHAPED (4 slots)

# Register
execute unless score #vanilla.honeycomb_block vplib.recipe matches 1.. store result score #vanilla.honeycomb_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:honeycomb"},{Slot:3b,id:"minecraft:honeycomb"},{Slot:11b,id:"minecraft:honeycomb"},{Slot:12b,id:"minecraft:honeycomb"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honeycomb_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:honeycomb"},{Slot:4b,id:"minecraft:honeycomb"},{Slot:12b,id:"minecraft:honeycomb"},{Slot:13b,id:"minecraft:honeycomb"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honeycomb_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:honeycomb"},{Slot:12b,id:"minecraft:honeycomb"},{Slot:20b,id:"minecraft:honeycomb"},{Slot:21b,id:"minecraft:honeycomb"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honeycomb_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:honeycomb"},{Slot:13b,id:"minecraft:honeycomb"},{Slot:21b,id:"minecraft:honeycomb"},{Slot:22b,id:"minecraft:honeycomb"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honeycomb_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.honeycomb_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:honeycomb_block",Count:1b}