# SHAPED (9 slots)

# Register
execute unless score #vanilla.lapis_block vplib.recipe matches 1.. store result score #vanilla.lapis_block vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:lapis_lazuli"},{Slot:3b,id:"minecraft:lapis_lazuli"},{Slot:4b,id:"minecraft:lapis_lazuli"},{Slot:11b,id:"minecraft:lapis_lazuli"},{Slot:12b,id:"minecraft:lapis_lazuli"},{Slot:13b,id:"minecraft:lapis_lazuli"},{Slot:20b,id:"minecraft:lapis_lazuli"},{Slot:21b,id:"minecraft:lapis_lazuli"},{Slot:22b,id:"minecraft:lapis_lazuli"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.lapis_block vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.lapis_block vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:lapis_block",Count:1b}