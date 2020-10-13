#> thewii:vp_library/custom_crafting/block/gui/check_recipes

# Store item amount in the grid
execute store result score #amount twvp.temp if data storage thewii:vp_library/temp recipeInput[]
#tellraw @a ["Items in grid: ",{"score":{"name":"#amount","objective":"twvp.temp"}}]

data modify storage thewii:vp_library/temp recipeOutput set value {}

# Check recipes based on item amount(performance boost)
execute if score #amount twvp.temp matches 1 run function #thewii:vp_library/custom_crafting/recipes/1_slot
execute if score #amount twvp.temp matches 2 run function #thewii:vp_library/custom_crafting/recipes/2_slots
execute if score #amount twvp.temp matches 3 run function #thewii:vp_library/custom_crafting/recipes/3_slots
execute if score #amount twvp.temp matches 4 run function #thewii:vp_library/custom_crafting/recipes/4_slots
execute if score #amount twvp.temp matches 5 run function #thewii:vp_library/custom_crafting/recipes/5_slots
execute if score #amount twvp.temp matches 6 run function #thewii:vp_library/custom_crafting/recipes/6_slots
execute if score #amount twvp.temp matches 7 run function #thewii:vp_library/custom_crafting/recipes/7_slots
execute if score #amount twvp.temp matches 8 run function #thewii:vp_library/custom_crafting/recipes/8_slots
execute if score #amount twvp.temp matches 9 run function #thewii:vp_library/custom_crafting/recipes/9_slots


# Check withdrawn result slot
execute if score #recipe twvp.temp matches 1.. if score @s twvp.recipe matches 1.. if score @s twvp.recipe = #recipe twvp.temp if data storage thewii:vp_library/temp containerResult run function thewii:vp_library/custom_crafting/block/gui/result_compare

execute if score #recipe twvp.temp matches 1.. unless data storage thewii:vp_library/temp containerResult run function thewii:vp_library/custom_crafting/block/gui/crafted


# Show result
scoreboard players set #show_result twvp.temp 0

execute if score #recipe twvp.temp matches 1.. unless score @s twvp.recipe matches 1.. run scoreboard players set #show_result twvp.temp 1
execute if score #recipe twvp.temp matches 1.. unless score @s twvp.recipe = #recipe twvp.temp run scoreboard players set #show_result twvp.temp 1

execute if score #show_result twvp.temp matches 1 run function thewii:vp_library/custom_crafting/block/gui/show_result


## Set gui holder when the result slot is withdrawn
execute if score #recipe twvp.temp matches 0 if score @s twvp.recipe matches 1.. run replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}