# SHAPELESS (3 slots)

# Register
execute unless score #vanilla.fermented_spider_eye vplib.recipe matches 1.. store result score #vanilla.fermented_spider_eye vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:spider_eye"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:brown_mushroom"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:sugar"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 if score #ingredient_2 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.fermented_spider_eye vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.fermented_spider_eye vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:fermented_spider_eye",Count:1b}