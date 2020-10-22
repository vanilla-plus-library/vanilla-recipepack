#> vplib:custom_crafting/v1/load/recipes

# Increase
scoreboard players add #vplib.load vplib.recipe 1
execute unless score #vplib.load vplib.recipe matches 1..9 run scoreboard players reset #vplib.load vplib.recipe

# Schedule next tick
execute if score #vplib.load vplib.recipe matches 1.. run schedule function vplib:custom_crafting/v1/load/recipes 1t replace

# Reset data to run faster
data remove storage vplib:temp containerGrid
scoreboard players set #recipe vplib.temp -1

# Load recipes
execute if score #vplib.load vplib.recipe matches 1 run function #vplib:custom_crafting/api/table/recipes/1
execute if score #vplib.load vplib.recipe matches 2 run function #vplib:custom_crafting/api/table/recipes/2
execute if score #vplib.load vplib.recipe matches 3 run function #vplib:custom_crafting/api/table/recipes/3
execute if score #vplib.load vplib.recipe matches 4 run function #vplib:custom_crafting/api/table/recipes/4
execute if score #vplib.load vplib.recipe matches 5 run function #vplib:custom_crafting/api/table/recipes/5
execute if score #vplib.load vplib.recipe matches 6 run function #vplib:custom_crafting/api/table/recipes/6
execute if score #vplib.load vplib.recipe matches 7 run function #vplib:custom_crafting/api/table/recipes/7
execute if score #vplib.load vplib.recipe matches 8 run function #vplib:custom_crafting/api/table/recipes/8
execute if score #vplib.load vplib.recipe matches 9 run function #vplib:custom_crafting/api/table/recipes/9

# DEBUG Message
execute if score #vplib.load vplib.recipe matches 9 run tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"score":{"name":"$register","objective": "vplib.recipe"},"color":"white","bold":false},{"text":" recipes loaded.","color":"white","bold":false}]
