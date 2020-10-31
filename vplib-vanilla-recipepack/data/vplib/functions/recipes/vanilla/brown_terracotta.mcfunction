# SHAPED (9 slots)

# Register
execute unless score #vanilla.brown_terracotta vplib.recipe matches 1.. store result score #vanilla.brown_terracotta vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:terracotta"},{Slot:3b,id:"minecraft:terracotta"},{Slot:4b,id:"minecraft:terracotta"},{Slot:11b,id:"minecraft:terracotta"},{Slot:12b,id:"minecraft:brown_dye"},{Slot:13b,id:"minecraft:terracotta"},{Slot:20b,id:"minecraft:terracotta"},{Slot:21b,id:"minecraft:terracotta"},{Slot:22b,id:"minecraft:terracotta"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.brown_terracotta vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.brown_terracotta vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:brown_terracotta",Count:8b}