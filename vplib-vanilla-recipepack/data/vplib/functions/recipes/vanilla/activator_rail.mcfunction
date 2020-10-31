# SHAPED (9 slots)

# Register
execute unless score #vanilla.activator_rail vplib.recipe matches 1.. store result score #vanilla.activator_rail vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:12b,id:"minecraft:redstone_torch"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.activator_rail vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.activator_rail vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:activator_rail",Count:6b}