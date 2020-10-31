# SHAPED (7 slots)

# Register
execute unless score #vanilla.ladder vplib.recipe matches 1.. store result score #vanilla.ladder vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.ladder vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.ladder vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:ladder",Count:3b}