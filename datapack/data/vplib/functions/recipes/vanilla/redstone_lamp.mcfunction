# SHAPED (5 slots)

# Register
execute unless score #vanilla.redstone_lamp vplib.recipe matches 1.. store result score #vanilla.redstone_lamp vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:redstone"},{Slot:11b,id:"minecraft:redstone"},{Slot:12b,id:"minecraft:glowstone"},{Slot:13b,id:"minecraft:redstone"},{Slot:21b,id:"minecraft:redstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.redstone_lamp vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.redstone_lamp vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:redstone_lamp",Count:1b}