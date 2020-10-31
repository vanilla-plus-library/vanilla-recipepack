# SHAPELESS (2 slots)

# Register
execute unless score #vanilla.flint_and_steel vplib.recipe matches 1.. store result score #vanilla.flint_and_steel vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:iron_ingot"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:flint"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.flint_and_steel vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.flint_and_steel vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:0}}