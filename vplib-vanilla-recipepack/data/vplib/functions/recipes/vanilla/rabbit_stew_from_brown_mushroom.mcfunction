# SHAPELESS (5 slots)

# Register
execute unless score #vanilla.rabbit_stew_from_brown_mushroom vplib.recipe matches 1.. store result score #vanilla.rabbit_stew_from_brown_mushroom vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:baked_potato"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:cooked_rabbit"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:bowl"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_2 vplib.temp matches 1.. store result score #ingredient_3 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:carrot"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_3 vplib.temp matches 1.. store result score #ingredient_4 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:brown_mushroom"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 if score #ingredient_2 vplib.temp matches 1 if score #ingredient_3 vplib.temp matches 1 if score #ingredient_4 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.rabbit_stew_from_brown_mushroom vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.rabbit_stew_from_brown_mushroom vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:rabbit_stew",Count:1b}