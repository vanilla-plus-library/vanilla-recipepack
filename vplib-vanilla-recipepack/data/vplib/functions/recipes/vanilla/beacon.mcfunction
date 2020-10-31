# SHAPED (9 slots)

# Register
execute unless score #vanilla.beacon vplib.recipe matches 1.. store result score #vanilla.beacon vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:glass"},{Slot:3b,id:"minecraft:glass"},{Slot:4b,id:"minecraft:glass"},{Slot:11b,id:"minecraft:glass"},{Slot:12b,id:"minecraft:nether_star"},{Slot:13b,id:"minecraft:glass"},{Slot:20b,id:"minecraft:obsidian"},{Slot:21b,id:"minecraft:obsidian"},{Slot:22b,id:"minecraft:obsidian"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.beacon vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.beacon vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:beacon",Count:1b}