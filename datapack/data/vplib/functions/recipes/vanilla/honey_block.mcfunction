# SHAPED (4 slots)

# Register
execute unless score #vanilla.honey_block vplib.recipe matches 1.. store result score #vanilla.honey_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:honey_bottle"},{Slot:3b,id:"minecraft:honey_bottle"},{Slot:11b,id:"minecraft:honey_bottle"},{Slot:12b,id:"minecraft:honey_bottle"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honey_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:honey_bottle"},{Slot:4b,id:"minecraft:honey_bottle"},{Slot:12b,id:"minecraft:honey_bottle"},{Slot:13b,id:"minecraft:honey_bottle"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honey_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:honey_bottle"},{Slot:12b,id:"minecraft:honey_bottle"},{Slot:20b,id:"minecraft:honey_bottle"},{Slot:21b,id:"minecraft:honey_bottle"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honey_block vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:honey_bottle"},{Slot:13b,id:"minecraft:honey_bottle"},{Slot:21b,id:"minecraft:honey_bottle"},{Slot:22b,id:"minecraft:honey_bottle"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.honey_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.honey_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:honey_block",Count:1b}