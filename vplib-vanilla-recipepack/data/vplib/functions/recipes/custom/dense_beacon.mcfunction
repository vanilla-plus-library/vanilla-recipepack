# SHAPED WITH MULTIPLE COUNT (9 SLOTS)
# This is a recipe that needs custom item amounts in the grid(instead of only 1).

# Register
execute unless score #vplib/dense_beacon vplib.recipe matches 1.. store result score #vplib/dense_beacon vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp run data get storage vplib:temp recipeInput[{Slot:2b,id:"minecraft:glass"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp run data get storage vplib:temp recipeInput[{Slot:3b,id:"minecraft:glass"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp run data get storage vplib:temp recipeInput[{Slot:4b,id:"minecraft:glass"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_2 vplib.temp matches 1.. store result score #ingredient_3 vplib.temp run data get storage vplib:temp recipeInput[{Slot:11b,id:"minecraft:glass"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_3 vplib.temp matches 1.. store result score #ingredient_4 vplib.temp run data get storage vplib:temp recipeInput[{Slot:12b,id:"minecraft:nether_star"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_4 vplib.temp matches 1.. store result score #ingredient_5 vplib.temp run data get storage vplib:temp recipeInput[{Slot:13b,id:"minecraft:glass"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_5 vplib.temp matches 1.. store result score #ingredient_6 vplib.temp run data get storage vplib:temp recipeInput[{Slot:20b,id:"minecraft:crying_obsidian"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_6 vplib.temp matches 1.. store result score #ingredient_7 vplib.temp run data get storage vplib:temp recipeInput[{Slot:21b,id:"minecraft:crying_obsidian"}].Count
execute if score #recipe vplib.temp matches 0 if score #ingredient_7 vplib.temp matches 1.. store result score #ingredient_8 vplib.temp run data get storage vplib:temp recipeInput[{Slot:22b,id:"minecraft:crying_obsidian"}].Count

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 2.. if score #ingredient_1 vplib.temp matches 2.. if score #ingredient_2 vplib.temp matches 2.. if score #ingredient_3 vplib.temp matches 2.. if score #ingredient_4 vplib.temp matches 4.. if score #ingredient_5 vplib.temp matches 2.. if score #ingredient_6 vplib.temp matches 2.. if score #ingredient_7 vplib.temp matches 2.. if score #ingredient_8 vplib.temp matches 2.. run scoreboard players operation #recipe vplib.temp = #vplib/dense_beacon vplib.recipe

# Output
execute if score #recipe vplib.temp = #vplib/dense_beacon vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:beacon",Count:1b,tag:{display:{Name:'{"text":"Dense Beacon","italic":false}'},Enchantments:[{id:"craftings:dense",lvl:1s}]}}