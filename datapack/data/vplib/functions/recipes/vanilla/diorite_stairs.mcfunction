# SHAPED (6 slots)

# Register
execute unless score #vanilla.diorite_stairs vplib.recipe matches 1.. store result score #vanilla.diorite_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:diorite"},{Slot:11b,id:"minecraft:diorite"},{Slot:12b,id:"minecraft:diorite"},{Slot:20b,id:"minecraft:diorite"},{Slot:21b,id:"minecraft:diorite"},{Slot:22b,id:"minecraft:diorite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.diorite_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.diorite_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:diorite_stairs",Count:4b}