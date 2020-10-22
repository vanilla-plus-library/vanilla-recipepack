#> vplib:custom_crafting/v1/load/load
# From: 'vplib:custom_crafting/v1/load/resolve'
# Name: Vanilla+ Library: Custom Crafting
# Description: Universal custom crafting table implementation.
# Version: 1

# VERSION Set storage

## Current
data modify storage vplib:data modules."custom_crafting".version.current set value 1

## Breaking
data modify storage vplib:data modules."custom_crafting".version.breaking set value 1

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Custom Crafting v1","color":"white","bold":false}]

# Setup
scoreboard objectives add vplib.recipe dummy


# Update recipe registry
scoreboard players reset * vplib.recipe
scoreboard players set $register vplib.recipe 0

scoreboard players set #vplib.load vplib.recipe 0
schedule function vplib:custom_crafting/v1/load/recipes 5t replace