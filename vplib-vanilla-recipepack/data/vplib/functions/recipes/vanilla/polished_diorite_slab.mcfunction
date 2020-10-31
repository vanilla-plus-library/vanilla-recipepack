# SHAPED (3 slots)

# Register
execute unless score #vanilla.polished_diorite_slab vplib.recipe matches 1.. store result score #vanilla.polished_diorite_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:polished_diorite"},{Slot:3b,id:"minecraft:polished_diorite"},{Slot:4b,id:"minecraft:polished_diorite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_diorite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:polished_diorite"},{Slot:12b,id:"minecraft:polished_diorite"},{Slot:13b,id:"minecraft:polished_diorite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_diorite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:polished_diorite"},{Slot:21b,id:"minecraft:polished_diorite"},{Slot:22b,id:"minecraft:polished_diorite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.polished_diorite_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.polished_diorite_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:polished_diorite_slab",Count:6b}