# SHAPED (7 slots)

# Register
execute unless score #vanilla.crossbow vplib.recipe matches 1.. store result score #vanilla.crossbow vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stick"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:string"},{Slot:12b,id:"minecraft:tripwire_hook"},{Slot:13b,id:"minecraft:string"},{Slot:21b,id:"minecraft:stick"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.crossbow vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.crossbow vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:crossbow",Count:1b,tag:{Damage:0}}