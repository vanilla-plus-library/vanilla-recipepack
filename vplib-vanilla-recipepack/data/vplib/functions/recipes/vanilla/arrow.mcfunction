# SHAPED (3 slots)

# Register
execute unless score #vanilla.arrow vplib.recipe matches 1.. store result score #vanilla.arrow vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:flint"},{Slot:11b,id:"minecraft:stick"},{Slot:20b,id:"minecraft:feather"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.arrow vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:flint"},{Slot:12b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:feather"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.arrow vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:flint"},{Slot:13b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:feather"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.arrow vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.arrow vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:arrow",Count:4b}