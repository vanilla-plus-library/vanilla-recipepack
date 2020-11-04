# SHAPED (3 slots)

# Register
execute unless score #vanilla.bread vplib.recipe matches 1.. store result score #vanilla.bread vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:wheat"},{Slot:3b,id:"minecraft:wheat"},{Slot:4b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bread vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:wheat"},{Slot:12b,id:"minecraft:wheat"},{Slot:13b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bread vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:20b,id:"minecraft:wheat"},{Slot:21b,id:"minecraft:wheat"},{Slot:22b,id:"minecraft:wheat"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.bread vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.bread vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:bread",Count:1b}