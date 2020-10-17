#> vplib:custom_crafting/v1/load/load
# From: 'vplib:custom_crafting/v1/load/resolve'
# Name: Vanilla+ Library: Custom Crafting
# Description: Universal custom crafting table implementation.
# Version: 1

# Setup
scoreboard objectives add vpcc.recipe dummy
scoreboard objectives add vpcc.lastRecipe dummy

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded: Vanilla+ Lib Custom Crafting v1","color":"white","bold":false}]

# Update recipe registry
data remove storage vplib:temp recipeInput
scoreboard players set #recipe vpcr.temp -1

scoreboard players reset * vpcc.recipe
scoreboard players set $register vpcc.recipe 0

function #vplib:custom_crafting/api/recipes/all

## DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"score":{"name":"$register","objective": "vpcc.recipe"},"color":"white","bold":false},{"text":" recipes loaded.","color":"white","bold":false}]


# VERSION Set storage

## Current
data modify storage vplib:data modules."custom_crafting".version.current set value 1

## Breaking
data modify storage vplib:data modules."custom_crafting".version.breaking set value 1