# SHAPED (6 slots)

# Register
execute unless score #vanilla.blackstone_wall vplib.recipe matches 1.. store result score #vanilla.blackstone_wall vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:blackstone"},{Slot:3b,id:"minecraft:blackstone"},{Slot:4b,id:"minecraft:blackstone"},{Slot:11b,id:"minecraft:blackstone"},{Slot:12b,id:"minecraft:blackstone"},{Slot:13b,id:"minecraft:blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.blackstone_wall vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:blackstone"},{Slot:12b,id:"minecraft:blackstone"},{Slot:13b,id:"minecraft:blackstone"},{Slot:20b,id:"minecraft:blackstone"},{Slot:21b,id:"minecraft:blackstone"},{Slot:22b,id:"minecraft:blackstone"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.blackstone_wall vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.blackstone_wall vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:blackstone_wall",Count:6b}