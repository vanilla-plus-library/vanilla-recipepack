# SHAPELESS (3 slots)

# Register
execute unless score #vanilla.mushroom_stew vplib.recipe matches 1.. store result score #vanilla.mushroom_stew vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:brown_mushroom"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:red_mushroom"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:bowl"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 if score #ingredient_2 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.mushroom_stew vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.mushroom_stew vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:mushroom_stew",Count:1b}