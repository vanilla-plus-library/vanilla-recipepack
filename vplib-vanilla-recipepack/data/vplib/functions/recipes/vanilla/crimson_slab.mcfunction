# SHAPED (3 slots)

# Register
execute unless score #vanilla.crimson_slab vplib.recipe matches 1.. store result score #vanilla.crimson_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:crimson_planks"},{Slot:3b,id:"minecraft:crimson_planks"},{Slot:4b,id:"minecraft:crimson_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.crimson_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:crimson_planks"},{Slot:12b,id:"minecraft:crimson_planks"},{Slot:13b,id:"minecraft:crimson_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.crimson_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:crimson_planks"},{Slot:21b,id:"minecraft:crimson_planks"},{Slot:22b,id:"minecraft:crimson_planks"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.crimson_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.crimson_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:crimson_slab",Count:6b}