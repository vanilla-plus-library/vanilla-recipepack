# SHAPED (3 slots)

# Register
execute unless score #vanilla.shulker_box vplib.recipe matches 1.. store result score #vanilla.shulker_box vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:shulker_shell"},{Slot:11b,id:"minecraft:chest"},{Slot:20b,id:"minecraft:shulker_shell"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shulker_box vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:shulker_shell"},{Slot:12b,id:"minecraft:chest"},{Slot:21b,id:"minecraft:shulker_shell"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shulker_box vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:shulker_shell"},{Slot:13b,id:"minecraft:chest"},{Slot:22b,id:"minecraft:shulker_shell"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.shulker_box vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.shulker_box vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:shulker_box",Count:1b}