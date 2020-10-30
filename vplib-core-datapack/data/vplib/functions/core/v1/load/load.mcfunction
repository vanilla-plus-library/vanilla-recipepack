#> vplib:core/v1/load/load
# From: 'vplib:core/v1/load/resolve'
# Name: Vanilla+ Library: Core
# Description: Core module for the library.
# Version: 1

# VERSION Set storage

## Current
execute store result storage vplib:data modules.core.version.current int 1 run scoreboard players get #vplib.core.current vplib.load

## Breaking
execute store result storage vplib:data modules.core.version.breaking int 1 run scoreboard players get #vplib.core.breaking vplib.load

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Core v1","color":"white","bold":false}]


# Setup
scoreboard objectives add vplib.data dummy
scoreboard objectives add vplib.temp dummy
scoreboard objectives add vplib.math dummy
scoreboard objectives add vplib.id dummy


# Forceloaded chunk
execute in minecraft:overworld run function vplib:core/v1/core/set_chunk
execute in minecraft:the_nether run function vplib:core/v1/core/set_chunk
execute in minecraft:the_end run function vplib:core/v1/core/set_chunk