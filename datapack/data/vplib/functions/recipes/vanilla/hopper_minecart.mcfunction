# SHAPED (2 slots)

# Register
execute unless score #vanilla.hopper_minecart vplib.recipe matches 1.. store result score #vanilla.hopper_minecart vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:hopper"},{Slot:11b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:hopper"},{Slot:12b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:hopper"},{Slot:13b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:hopper"},{Slot:20b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:hopper"},{Slot:21b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:hopper"},{Slot:22b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.hopper_minecart vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:hopper_minecart",Count:1b}