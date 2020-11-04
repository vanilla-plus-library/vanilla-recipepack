# SHAPED (7 slots)

# Register
execute unless score #vanilla.brown_banner vplib.recipe matches 1.. store result score #vanilla.brown_banner vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:brown_wool"},{Slot:3b,id:"minecraft:brown_wool"},{Slot:4b,id:"minecraft:brown_wool"},{Slot:11b,id:"minecraft:brown_wool"},{Slot:12b,id:"minecraft:brown_wool"},{Slot:13b,id:"minecraft:brown_wool"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.brown_banner vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.brown_banner vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:brown_banner",Count:1b}