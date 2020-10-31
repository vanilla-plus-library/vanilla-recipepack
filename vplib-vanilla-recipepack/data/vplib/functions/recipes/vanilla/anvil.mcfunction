# SHAPED (7 slots)

# Register
execute unless score #vanilla.anvil vplib.recipe matches 1.. store result score #vanilla.anvil vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:iron_block"},{Slot:3b,id:"minecraft:iron_block"},{Slot:4b,id:"minecraft:iron_block"},{Slot:12b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.anvil vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.anvil vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:anvil",Count:1b}