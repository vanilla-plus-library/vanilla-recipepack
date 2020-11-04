# SHAPED (7 slots)

# Register
execute unless score #vanilla.cauldron vplib.recipe matches 1.. store result score #vanilla.cauldron vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cauldron vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.cauldron vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:cauldron",Count:1b}