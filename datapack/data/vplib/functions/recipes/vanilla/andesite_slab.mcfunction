# SHAPED (3 slots)

# Register
execute unless score #vanilla.andesite_slab vplib.recipe matches 1.. store result score #vanilla.andesite_slab vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:andesite"},{Slot:3b,id:"minecraft:andesite"},{Slot:4b,id:"minecraft:andesite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.andesite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:andesite"},{Slot:12b,id:"minecraft:andesite"},{Slot:13b,id:"minecraft:andesite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.andesite_slab vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:andesite"},{Slot:21b,id:"minecraft:andesite"},{Slot:22b,id:"minecraft:andesite"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.andesite_slab vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.andesite_slab vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:andesite_slab",Count:6b}