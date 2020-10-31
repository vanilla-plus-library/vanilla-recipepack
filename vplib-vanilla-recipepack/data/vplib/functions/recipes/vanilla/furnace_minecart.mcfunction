# SHAPED (2 slots)

# Register
execute unless score #vanilla.furnace_minecart vplib.recipe matches 1.. store result score #vanilla.furnace_minecart vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:furnace"},{Slot:11b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:furnace"},{Slot:12b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:furnace"},{Slot:13b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:furnace"},{Slot:20b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:furnace"},{Slot:21b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:furnace"},{Slot:22b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.furnace_minecart vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:furnace_minecart",Count:1b}