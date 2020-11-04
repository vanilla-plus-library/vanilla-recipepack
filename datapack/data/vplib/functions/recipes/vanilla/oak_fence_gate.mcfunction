# SHAPED (6 slots)

# Register
execute unless score #vanilla.oak_fence_gate vplib.recipe matches 1.. store result score #vanilla.oak_fence_gate vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:oak_planks"},{Slot:4b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:oak_planks"},{Slot:13b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_fence_gate vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:oak_planks"},{Slot:13b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:oak_planks"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.oak_fence_gate vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.oak_fence_gate vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:oak_fence_gate",Count:1b}