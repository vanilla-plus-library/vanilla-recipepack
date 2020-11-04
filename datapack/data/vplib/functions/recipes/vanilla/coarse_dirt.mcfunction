# SHAPED (4 slots)

# Register
execute unless score #vanilla.coarse_dirt vplib.recipe matches 1.. store result score #vanilla.coarse_dirt vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:dirt"},{Slot:3b,id:"minecraft:gravel"},{Slot:11b,id:"minecraft:gravel"},{Slot:12b,id:"minecraft:dirt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.coarse_dirt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:dirt"},{Slot:4b,id:"minecraft:gravel"},{Slot:12b,id:"minecraft:gravel"},{Slot:13b,id:"minecraft:dirt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.coarse_dirt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:dirt"},{Slot:12b,id:"minecraft:gravel"},{Slot:20b,id:"minecraft:gravel"},{Slot:21b,id:"minecraft:dirt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.coarse_dirt vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:dirt"},{Slot:13b,id:"minecraft:gravel"},{Slot:21b,id:"minecraft:gravel"},{Slot:22b,id:"minecraft:dirt"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.coarse_dirt vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.coarse_dirt vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:coarse_dirt",Count:4b}