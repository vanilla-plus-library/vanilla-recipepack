# SHAPED (5 slots)

# Register
execute unless score #vanilla.fishing_rod vplib.recipe matches 1.. store result score #vanilla.fishing_rod vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:4b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:string"},{Slot:20b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.fishing_rod vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.fishing_rod vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:fishing_rod",Count:1b,tag:{Damage:0}}