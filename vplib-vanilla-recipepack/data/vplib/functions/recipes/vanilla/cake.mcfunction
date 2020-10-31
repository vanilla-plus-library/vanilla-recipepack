# SHAPED (9 slots)
# This is a normal recipe when checking, but it has custom functions
# when crafted.

# Register
execute unless score #vanilla.cake vplib.recipe matches 1.. store result score #vanilla.cake vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:milk_bucket"},{Slot:3b,id:"minecraft:milk_bucket"},{Slot:4b,id:"minecraft:milk_bucket"},{Slot:11b,id:"minecraft:sugar"},{Slot:12b,id:"minecraft:egg"},{Slot:13b,id:"minecraft:sugar"},{Slot:20b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:wheat"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.cake vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.cake vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:cake",Count:1b}