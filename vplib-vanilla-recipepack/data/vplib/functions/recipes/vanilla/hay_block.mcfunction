# SHAPED (9 slots)

# Register
execute unless score #vanilla.hay_block vplib.recipe matches 1.. store result score #vanilla.hay_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:wheat"},{Slot:3b,id:"minecraft:wheat"},{Slot:4b,id:"minecraft:wheat"},{Slot:11b,id:"minecraft:wheat"},{Slot:12b,id:"minecraft:wheat"},{Slot:13b,id:"minecraft:wheat"},{Slot:20b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:wheat"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hay_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.hay_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:hay_block",Count:1b}