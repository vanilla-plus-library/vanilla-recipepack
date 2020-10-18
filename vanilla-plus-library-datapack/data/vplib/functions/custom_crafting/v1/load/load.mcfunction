#> vplib:custom_crafting/v1/load/load
# From: 'vplib:custom_crafting/v1/load/resolve'
# Name: Vanilla+ Library: Custom Crafting
# Description: Universal custom crafting table implementation.
# Version: 1

# Setup
scoreboard objectives add vpcc.recipe dummy
scoreboard objectives add vpcc.saved dummy

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Custom Crafting v1","color":"white","bold":false}]

# Update recipe registry
scoreboard players reset * vpcc.recipe
scoreboard players set $register vpcc.recipe 0

scoreboard players set #recipes.load vpcr.data 0
schedule function vplib:custom_crafting/v1/load/recipes 5t replace 

# VERSION Set storage

## Current
data modify storage vplib:data modules."custom_crafting".version.current set value 1

## Breaking
data modify storage vplib:data modules."custom_crafting".version.breaking set value 1