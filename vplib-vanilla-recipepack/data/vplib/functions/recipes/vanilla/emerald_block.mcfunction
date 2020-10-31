# SHAPED (9 slots)

# Register
execute unless score #vanilla.emerald_block vplib.recipe matches 1.. store result score #vanilla.emerald_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:emerald"},{Slot:3b,id:"minecraft:emerald"},{Slot:4b,id:"minecraft:emerald"},{Slot:11b,id:"minecraft:emerald"},{Slot:12b,id:"minecraft:emerald"},{Slot:13b,id:"minecraft:emerald"},{Slot:20b,id:"minecraft:emerald"},{Slot:21b,id:"minecraft:emerald"},{Slot:22b,id:"minecraft:emerald"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.emerald_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.emerald_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:emerald_block",Count:1b}