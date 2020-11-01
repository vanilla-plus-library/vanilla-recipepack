# SHAPED (8 slots)

# Register
execute unless score #vanilla.diamond_chestplate vplib.recipe matches 1.. store result score #vanilla.diamond_chestplate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:diamond"},{Slot:11b,id:"minecraft:diamond"},{Slot:12b,id:"minecraft:diamond"},{Slot:13b,id:"minecraft:diamond"},{Slot:20b,id:"minecraft:diamond"},{Slot:21b,id:"minecraft:diamond"},{Slot:22b,id:"minecraft:diamond"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.diamond_chestplate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.diamond_chestplate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:diamond_chestplate",Count:1b,tag:{Damage:0}}