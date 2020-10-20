#> vplib:custom_crafting/v1/load/recipes

# Increase
scoreboard players add #vplib.load vpcc.recipe 1
execute unless score #vplib.load vpcc.recipe matches 1..9 run scoreboard players reset #vplib.load vpcc.recipe

# Schedule next tick
execute if score #vplib.load vpcc.recipe matches 1.. run schedule function vplib:custom_crafting/v1/load/recipes 1t replace

# Reset data to run faster
data remove storage vplib:temp recipeInput
scoreboard players set #recipe vpcr.temp -1

# Load recipes
execute if score #vplib.load vpcc.recipe matches 1 run function #vplib:custom_crafting/api/recipes/1_slots
execute if score #vplib.load vpcc.recipe matches 2 run function #vplib:custom_crafting/api/recipes/2_slots
execute if score #vplib.load vpcc.recipe matches 3 run function #vplib:custom_crafting/api/recipes/3_slots
execute if score #vplib.load vpcc.recipe matches 4 run function #vplib:custom_crafting/api/recipes/4_slots
execute if score #vplib.load vpcc.recipe matches 5 run function #vplib:custom_crafting/api/recipes/5_slots
execute if score #vplib.load vpcc.recipe matches 6 run function #vplib:custom_crafting/api/recipes/6_slots
execute if score #vplib.load vpcc.recipe matches 7 run function #vplib:custom_crafting/api/recipes/7_slots
execute if score #vplib.load vpcc.recipe matches 8 run function #vplib:custom_crafting/api/recipes/8_slots
execute if score #vplib.load vpcc.recipe matches 9 run function #vplib:custom_crafting/api/recipes/9_slots

# DEBUG Message
execute if score #vplib.load vpcc.recipe matches 9 run tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"score":{"name":"$register","objective": "vpcc.recipe"},"color":"white","bold":false},{"text":" recipes loaded.","color":"white","bold":false}]
