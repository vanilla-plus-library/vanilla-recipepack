# SHAPED (9 slots)

# Register
execute unless score #vanilla.ender_chest vplib.recipe matches 1.. store result score #vanilla.ender_chest vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:obsidian"},{Slot:3b,id:"minecraft:obsidian"},{Slot:4b,id:"minecraft:obsidian"},{Slot:11b,id:"minecraft:obsidian"},{Slot:12b,id:"minecraft:ender_eye"},{Slot:13b,id:"minecraft:obsidian"},{Slot:20b,id:"minecraft:obsidian"},{Slot:21b,id:"minecraft:obsidian"},{Slot:22b,id:"minecraft:obsidian"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.ender_chest vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.ender_chest vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:ender_chest",Count:1b}