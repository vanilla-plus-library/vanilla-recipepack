#> vplib:custom_crafting/v1/block/table/gui/check_recipes

# Store item amount in the grid
execute store result score #amount vpcr.temp if data storage vplib:temp recipeInput[]
#tellraw @a ["Items in grid: ",{"score":{"name":"#amount","objective":"vpcr.temp"}}]
#tellraw @a ["Input: ",{"nbt":"recipeInput","storage":"vplib:temp"}]

data modify storage vplib:temp recipeOutput set value {}

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

#tellraw @a ["Output: ",{"nbt":"recipeOutput","storage":"vplib:temp"}]

# Check withdrawn result slot
execute if score #recipe vpcr.temp matches 1.. if score @s vpcc.recipe matches 1.. if score @s vpcc.recipe = #recipe vpcr.temp if data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/result/compare

execute if score #recipe vpcr.temp matches 1.. unless data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/crafted


# Show result
scoreboard players set #show_result vpcr.temp 0

execute if score #recipe vpcr.temp matches 1.. unless score @s vpcc.recipe matches 1.. run scoreboard players set #show_result vpcr.temp 1
execute if score #recipe vpcr.temp matches 1.. unless score @s vpcc.recipe = #recipe vpcr.temp run scoreboard players set #show_result vpcr.temp 1

execute if score #show_result vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/result/show_output


## Set gui holder when the result slot is withdrawn
execute if score #recipe vpcr.temp matches 0 if score @s vpcc.recipe matches 1.. run replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}