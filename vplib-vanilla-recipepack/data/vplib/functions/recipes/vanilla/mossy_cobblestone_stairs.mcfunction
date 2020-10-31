# SHAPED (6 slots)

# Register
execute unless score #vanilla.mossy_cobblestone_stairs vplib.recipe matches 1.. store result score #vanilla.mossy_cobblestone_stairs vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:mossy_cobblestone"},{Slot:11b,id:"minecraft:mossy_cobblestone"},{Slot:12b,id:"minecraft:mossy_cobblestone"},{Slot:20b,id:"minecraft:mossy_cobblestone"},{Slot:21b,id:"minecraft:mossy_cobblestone"},{Slot:22b,id:"minecraft:mossy_cobblestone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.mossy_cobblestone_stairs vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.mossy_cobblestone_stairs vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:mossy_cobblestone_stairs",Count:4b}