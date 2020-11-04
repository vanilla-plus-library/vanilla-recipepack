# SHAPED (5 slots)

# Register
execute unless score #vanilla.lead vplib.recipe matches 1.. store result score #vanilla.lead vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:11b,id:"minecraft:string"},{Slot:12b,id:"minecraft:slime_ball"},{Slot:22b,id:"minecraft:string"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.lead vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.lead vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:lead",Count:2b}