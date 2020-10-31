# SHAPED (7 slots)

# Register
execute unless score #vanilla.comparator vplib.recipe matches 1.. store result score #vanilla.comparator vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:redstone_torch"},{Slot:11b,id:"minecraft:redstone_torch"},{Slot:12b,id:"minecraft:quartz"},{Slot:13b,id:"minecraft:redstone_torch"},{Slot:20b,id:"minecraft:stone"},{Slot:21b,id:"minecraft:stone"},{Slot:22b,id:"minecraft:stone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.comparator vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.comparator vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:comparator",Count:1b}