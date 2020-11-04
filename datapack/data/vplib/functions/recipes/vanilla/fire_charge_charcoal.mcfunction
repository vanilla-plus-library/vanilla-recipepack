# SHAPELESS (3 slots)

# Register
execute unless score #vanilla.fire_charge_charcoal vplib.recipe matches 1.. store result score #vanilla.fire_charge_charcoal vplib.recipe run scoreboard players add $register vplib.recipe 1

# Count ingredients
execute if score #recipe vplib.temp matches 0 store result score #ingredient_0 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:gunpowder"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1.. store result score #ingredient_1 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:blaze_powder"}]
execute if score #recipe vplib.temp matches 0 if score #ingredient_1 vplib.temp matches 1.. store result score #ingredient_2 vplib.temp if data storage vplib:temp recipeInput[{id:"minecraft:charcoal"}]

# Condition
execute if score #recipe vplib.temp matches 0 if score #ingredient_0 vplib.temp matches 1 if score #ingredient_1 vplib.temp matches 1 run scoreboard players operation #recipe vplib.temp = #vanilla.fire_charge_charcoal vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.fire_charge_charcoal vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:fire_charge",Count:3b}