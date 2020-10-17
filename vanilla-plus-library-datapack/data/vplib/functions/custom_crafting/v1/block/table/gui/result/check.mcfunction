#> vplib:custom_crafting/v1/block/table/gui/result/check

# Check withdrawn result slot
execute if score @s vpcc.recipe matches 1.. if score @s vpcc.lastRecipe matches 1.. if score @s vpcc.lastRecipe = @s vpcc.recipe if data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/result/compare

execute if score @s vpcc.recipe matches 1.. unless data storage vplib:temp containerResult run function vplib:custom_crafting/v1/block/table/gui/crafted


# Show result
scoreboard players set #show_result vpcr.temp 0

execute if score @s vpcc.recipe matches 1.. unless score @s vpcc.lastRecipe matches 1.. run scoreboard players set #show_result vpcr.temp 1
execute if score @s vpcc.recipe matches 1.. unless score @s vpcc.lastRecipe = @s vpcc.recipe run scoreboard players set #show_result vpcr.temp 1

execute if score #show_result vpcr.temp matches 1 run function vplib:custom_crafting/v1/block/table/gui/result/show_output


## Set gui holder when the result slot is withdrawn
execute if score @s vpcc.recipe matches 0 if score @s vpcc.lastRecipe matches 1.. run replaceitem block ~ ~ ~ container.16 minecraft:gray_stained_glass_pane{HideFlags:63,CustomModelData:430000,vplib:{slot_holder:1b,type:2b},display:{Name:'{"text":""}'}}