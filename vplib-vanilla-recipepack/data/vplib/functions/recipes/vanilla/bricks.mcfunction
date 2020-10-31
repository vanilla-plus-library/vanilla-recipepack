# SHAPED (4 slots)

# Register
execute unless score #vanilla.bricks vplib.recipe matches 1.. store result score #vanilla.bricks vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:brick"},{Slot:3b,id:"minecraft:brick"},{Slot:11b,id:"minecraft:brick"},{Slot:12b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:brick"},{Slot:4b,id:"minecraft:brick"},{Slot:12b,id:"minecraft:brick"},{Slot:13b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:brick"},{Slot:12b,id:"minecraft:brick"},{Slot:20b,id:"minecraft:brick"},{Slot:21b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bricks vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:brick"},{Slot:13b,id:"minecraft:brick"},{Slot:21b,id:"minecraft:brick"},{Slot:22b,id:"minecraft:brick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bricks vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.bricks vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:bricks",Count:1b}