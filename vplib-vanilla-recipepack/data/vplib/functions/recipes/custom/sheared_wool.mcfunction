# SHAPELESS (2 slots)
# This is a normal recipe when checking, but it has custom functions
# when crafted.

# Register
execute unless score #vplib/sheared_wool vplib.recipe matches 1.. store result score #vplib/sheared_wool vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:shears"}]

execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. run data remove storage vplib:temp item[{id:"minecraft:shears"}]
execute if score #recipe vplib.temp matches 0 run function vplib:recipes/vanilla/item_tags/wools

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #matched vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vplib/sheared_wool vplib.recipe

# Output
execute if score #recipe vplib.temp = #vplib/sheared_wool vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:string",Count:4b}