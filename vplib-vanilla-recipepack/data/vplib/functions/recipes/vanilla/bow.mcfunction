# SHAPED (6 slots)

# Register
execute unless score #vanilla.bow vplib.recipe matches 1.. store result score #vanilla.bow vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:string"},{Slot:11b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:string"},{Slot:21b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bow vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.bow vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:bow",Count:1b,tag:{Damage:0}}