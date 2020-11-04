# SHAPED (9 slots)

# Register
execute unless score #vanilla.diamond_block vplib.recipe matches 1.. store result score #vanilla.diamond_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:diamond"},{Slot:3b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:diamond"},{Slot:11b,id:"minecraft:diamond"},{Slot:12b,id:"minecraft:diamond"},{Slot:13b,id:"minecraft:diamond"},{Slot:20b,id:"minecraft:diamond"},{Slot:21b,id:"minecraft:diamond"},{Slot:22b,id:"minecraft:diamond"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.diamond_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.diamond_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:diamond_block",Count:1b}