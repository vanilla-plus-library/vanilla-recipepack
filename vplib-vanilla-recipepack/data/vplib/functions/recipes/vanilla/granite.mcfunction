# SHAPELESS (2 slots)

# Register
execute unless score #vanilla.granite vplib.recipe matches 1.. store result score #vanilla.granite vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:diorite"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:quartz"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.granite vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.granite vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:granite",Count:1b}