# SHAPED (5 slots)

# Register
execute unless score #vanilla.diamond_helmet vplib.recipe matches 1.. store result score #vanilla.diamond_helmet vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:diamond"},{Slot:3b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:diamond"},{Slot:11b,id:"minecraft:diamond"},{Slot:13b,id:"minecraft:diamond"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.diamond_helmet vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:diamond"},{Slot:12b,id:"minecraft:diamond"},{Slot:13b,id:"minecraft:diamond"},{Slot:20b,id:"minecraft:diamond"},{Slot:22b,id:"minecraft:diamond"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.diamond_helmet vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.diamond_helmet vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:diamond_helmet",Count:1b,tag:{Damage:0}}