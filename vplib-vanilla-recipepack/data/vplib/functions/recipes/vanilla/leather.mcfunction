# SHAPED (4 slots)

# Register
execute unless score #vanilla.leather vplib.recipe matches 1.. store result score #vanilla.leather vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:rabbit_hide"},{Slot:3b,id:"minecraft:rabbit_hide"},{Slot:11b,id:"minecraft:rabbit_hide"},{Slot:12b,id:"minecraft:rabbit_hide"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.leather vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:rabbit_hide"},{Slot:4b,id:"minecraft:rabbit_hide"},{Slot:12b,id:"minecraft:rabbit_hide"},{Slot:13b,id:"minecraft:rabbit_hide"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.leather vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:rabbit_hide"},{Slot:12b,id:"minecraft:rabbit_hide"},{Slot:20b,id:"minecraft:rabbit_hide"},{Slot:21b,id:"minecraft:rabbit_hide"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.leather vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:rabbit_hide"},{Slot:13b,id:"minecraft:rabbit_hide"},{Slot:21b,id:"minecraft:rabbit_hide"},{Slot:22b,id:"minecraft:rabbit_hide"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.leather vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.leather vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:leather",Count:1b}