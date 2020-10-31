# SHAPED (9 slots)

# Register
execute unless score #vanilla.dispenser vplib.recipe matches 1.. store result score #vanilla.dispenser vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:cobblestone"},{Slot:3b,id:"minecraft:cobblestone"},{Slot:4b,id:"minecraft:cobblestone"},{Slot:11b,id:"minecraft:cobblestone"},{Slot:12b,id:"minecraft:bow"},{Slot:13b,id:"minecraft:cobblestone"},{Slot:20b,id:"minecraft:cobblestone"},{Slot:21b,id:"minecraft:redstone"},{Slot:22b,id:"minecraft:cobblestone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.dispenser vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.dispenser vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:dispenser",Count:1b}