# SHAPED (2 slots)

# Register
execute unless score #vanilla.tnt_minecart vplib.recipe matches 1.. store result score #vanilla.tnt_minecart vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:tnt"},{Slot:11b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:tnt"},{Slot:12b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:tnt"},{Slot:13b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:tnt"},{Slot:20b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:tnt"},{Slot:21b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:13b,id:"minecraft:tnt"},{Slot:22b,id:"minecraft:minecart"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.tnt_minecart vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:tnt_minecart",Count:1b}