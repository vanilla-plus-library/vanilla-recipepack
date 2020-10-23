#> vplib:custom_crafting/v1/block/table/gui/grid/recipes
#say Checking recipes.

# Move container input
data modify storage vplib:temp recipeInput set from storage vplib:temp containerGrid

# Get amount of items in the grid
execute store result score #amount vplib.temp if data storage vplib:temp recipeInput[]

# Check recipes based on the amount of items(improves performance)
execute if score #amount vplib.temp matches 1 run function #vplib:custom_crafting/api/table/recipes/1
execute if score #amount vplib.temp matches 2 run function #vplib:custom_crafting/api/table/recipes/2
execute if score #amount vplib.temp matches 3 run function #vplib:custom_crafting/api/table/recipes/3
execute if score #amount vplib.temp matches 4 run function #vplib:custom_crafting/api/table/recipes/4
execute if score #amount vplib.temp matches 5 run function #vplib:custom_crafting/api/table/recipes/5
execute if score #amount vplib.temp matches 6 run function #vplib:custom_crafting/api/table/recipes/6
execute if score #amount vplib.temp matches 7 run function #vplib:custom_crafting/api/table/recipes/7
execute if score #amount vplib.temp matches 8 run function #vplib:custom_crafting/api/table/recipes/8
execute if score #amount vplib.temp matches 9 run function #vplib:custom_crafting/api/table/recipes/9
execute if score #recipe vplib.temp matches 0 run function #vplib:custom_crafting/api/table/recipes/any