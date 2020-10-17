#> vplib:custom_crafting/v1/block/table/gui/grid/recipes
#say Checking recipes.

## Store amount of items in the grid
execute store result score #amount vpcr.temp if data storage vplib:temp recipeInput[]
#tellraw @a ["Items in grid: ",{"score":{"name":"#amount","objective":"vpcr.temp"}}]

# Check recipes based on item amount(performance boost)
execute if score #amount vpcr.temp matches 1 run function #vplib:custom_crafting/api/recipes/1_slots
execute if score #amount vpcr.temp matches 2 run function #vplib:custom_crafting/api/recipes/2_slots
execute if score #amount vpcr.temp matches 3 run function #vplib:custom_crafting/api/recipes/3_slots
execute if score #amount vpcr.temp matches 4 run function #vplib:custom_crafting/api/recipes/4_slots
execute if score #amount vpcr.temp matches 5 run function #vplib:custom_crafting/api/recipes/5_slots
execute if score #amount vpcr.temp matches 6 run function #vplib:custom_crafting/api/recipes/6_slots
execute if score #amount vpcr.temp matches 7 run function #vplib:custom_crafting/api/recipes/7_slots
execute if score #amount vpcr.temp matches 8 run function #vplib:custom_crafting/api/recipes/8_slots
execute if score #amount vpcr.temp matches 9 run function #vplib:custom_crafting/api/recipes/9_slots