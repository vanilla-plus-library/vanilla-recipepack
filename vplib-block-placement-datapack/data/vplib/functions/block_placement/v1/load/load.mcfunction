#> vplib:block_placement/v1/load/load
# From: 'vplib:block_placement/v1/load/resolve'
# Name: Vanilla+ Library: Block Placement
# Description: Custom block placement using item frames and furnaces.
# Version: 1

# VERSION Set storage

## Current
execute store result storage vplib:data modules."block_placement".version.current int 1 run scoreboard players get #vplib.block_placement.current vplib.load

## Breaking
execute store result storage vplib:data modules."block_placement".version.breaking int 1 run scoreboard players get #vplib.block_placement.breaking vplib.load

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Block Placement v1","color":"white","bold":false}]


# Setup