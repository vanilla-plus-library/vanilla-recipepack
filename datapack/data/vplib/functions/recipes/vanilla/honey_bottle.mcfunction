# SHAPELESS (5 slots)

# Register
execute unless score #vanilla.honey_bottle vplib.recipe matches 1.. store result score #vanilla.honey_bottle vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:honey_block"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:glass_bottle"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 4 run scoreboard players operation #recipe vplib.temp = #vanilla.honey_bottle vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.honey_bottle vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:honey_bottle",Count:4b}