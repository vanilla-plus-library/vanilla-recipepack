# SHAPED (5 slots)

# Register
execute unless score #vanilla.turtle_helmet vplib.recipe matches 1.. store result score #vanilla.turtle_helmet vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:scute"},{Slot:3b,id:"minecraft:scute"},{Slot:4b,id:"minecraft:scute"},{Slot:11b,id:"minecraft:scute"},{Slot:13b,id:"minecraft:scute"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.turtle_helmet vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:scute"},{Slot:12b,id:"minecraft:scute"},{Slot:13b,id:"minecraft:scute"},{Slot:20b,id:"minecraft:scute"},{Slot:22b,id:"minecraft:scute"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.turtle_helmet vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.turtle_helmet vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:turtle_helmet",Count:1b,tag:{Damage:0}}