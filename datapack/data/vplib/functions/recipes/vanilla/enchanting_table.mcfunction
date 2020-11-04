# SHAPED (7 slots)

# Register
execute unless score #vanilla.enchanting_table vplib.recipe matches 1.. store result score #vanilla.enchanting_table vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:book"},{Slot:11b,id:"minecraft:diamond"},{Slot:12b,id:"minecraft:obsidian"},{Slot:13b,id:"minecraft:diamond"},{Slot:20b,id:"minecraft:obsidian"},{Slot:21b,id:"minecraft:obsidian"},{Slot:22b,id:"minecraft:obsidian"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.enchanting_table vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.enchanting_table vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:enchanting_table",Count:1b}