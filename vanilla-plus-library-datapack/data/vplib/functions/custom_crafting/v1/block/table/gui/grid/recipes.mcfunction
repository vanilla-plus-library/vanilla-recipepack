#> vplib:custom_crafting/v1/block/table/gui/grid/recipes
#say Checking recipes.

# Get amount of items in the grid
execute store result score #amount vpcr.temp if data storage vplib:temp recipeInput[]

# Check recipes based on the amount of items(improves performance)
execute if score #amount vpcr.temp matches 1 run function #vplib:custom_crafting/api/table/recipes/1
execute if score #amount vpcr.temp matches 2 run function #vplib:custom_crafting/api/table/recipes/2
execute if score #amount vpcr.temp matches 3 run function #vplib:custom_crafting/api/table/recipes/3
execute if score #amount vpcr.temp matches 4 run function #vplib:custom_crafting/api/table/recipes/4
execute if score #amount vpcr.temp matches 5 run function #vplib:custom_crafting/api/table/recipes/5
execute if score #amount vpcr.temp matches 6 run function #vplib:custom_crafting/api/table/recipes/6
execute if score #amount vpcr.temp matches 7 run function #vplib:custom_crafting/api/table/recipes/7
execute if score #amount vpcr.temp matches 8 run function #vplib:custom_crafting/api/table/recipes/8
execute if score #amount vpcr.temp matches 9 run function #vplib:custom_crafting/api/table/recipes/9