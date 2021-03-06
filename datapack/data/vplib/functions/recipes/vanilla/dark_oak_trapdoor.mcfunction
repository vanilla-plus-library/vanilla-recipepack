# SHAPED (6 slots)

# Register
execute unless score #vanilla.dark_oak_trapdoor vplib.recipe matches 1.. store result score #vanilla.dark_oak_trapdoor vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:dark_oak_planks"},{Slot:3b,id:"minecraft:dark_oak_planks"},{Slot:4b,id:"minecraft:dark_oak_planks"},{Slot:11b,id:"minecraft:dark_oak_planks"},{Slot:12b,id:"minecraft:dark_oak_planks"},{Slot:13b,id:"minecraft:dark_oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_trapdoor vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:dark_oak_planks"},{Slot:12b,id:"minecraft:dark_oak_planks"},{Slot:13b,id:"minecraft:dark_oak_planks"},{Slot:20b,id:"minecraft:dark_oak_planks"},{Slot:21b,id:"minecraft:dark_oak_planks"},{Slot:22b,id:"minecraft:dark_oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dark_oak_trapdoor vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.dark_oak_trapdoor vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:dark_oak_trapdoor",Count:2b}