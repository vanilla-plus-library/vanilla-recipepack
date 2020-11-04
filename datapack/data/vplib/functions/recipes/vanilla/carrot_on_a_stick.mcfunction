# SHAPED (2 slots)

# Register
execute unless score #vanilla.carrot_on_a_stick vplib.recipe matches 1.. store result score #vanilla.carrot_on_a_stick vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:fishing_rod"},{Slot:12b,id:"minecraft:carrot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.carrot_on_a_stick vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:fishing_rod"},{Slot:13b,id:"minecraft:carrot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.carrot_on_a_stick vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:fishing_rod"},{Slot:21b,id:"minecraft:carrot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.carrot_on_a_stick vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:fishing_rod"},{Slot:22b,id:"minecraft:carrot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.carrot_on_a_stick vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.carrot_on_a_stick vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Damage:0}}