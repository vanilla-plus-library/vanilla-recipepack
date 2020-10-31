# SHAPED (9 slots)

# Register
execute unless score #vanilla.blue_ice vplib.recipe matches 1.. store result score #vanilla.blue_ice vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:packed_ice"},{Slot:3b,id:"minecraft:packed_ice"},{Slot:4b,id:"minecraft:packed_ice"},{Slot:11b,id:"minecraft:packed_ice"},{Slot:12b,id:"minecraft:packed_ice"},{Slot:13b,id:"minecraft:packed_ice"},{Slot:20b,id:"minecraft:packed_ice"},{Slot:21b,id:"minecraft:packed_ice"},{Slot:22b,id:"minecraft:packed_ice"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.blue_ice vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.blue_ice vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:blue_ice",Count:1b}