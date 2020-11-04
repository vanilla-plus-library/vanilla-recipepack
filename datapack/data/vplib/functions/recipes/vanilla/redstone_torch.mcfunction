# SHAPED (2 slots)

# Register
execute unless score #vanilla.redstone_torch vplib.recipe matches 1.. store result score #vanilla.redstone_torch vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:redstone"},{Slot:11b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:redstone"},{Slot:12b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:redstone"},{Slot:13b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:redstone"},{Slot:20b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:redstone"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:redstone"},{Slot:22b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.redstone_torch vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:redstone_torch",Count:1b}