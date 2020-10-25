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


# Forceloaded chunk
forceload add -30000000 4320

setblock -30000000 0 4320 minecraft:yellow_shulker_box
setblock -30000000 0 4321 minecraft:oak_sign
setblock -30000000 0 4322 minecraft:hopper
setblock -30000000 0 4323 minecraft:dropper

setblock -30000000 1 4320 minecraft:bedrock
setblock -30000000 1 4321 minecraft:bedrock
setblock -30000000 1 4322 minecraft:bedrock
setblock -30000000 1 4323 minecraft:bedrock

summon minecraft:armor_stand 30000000 0 4320 {Tags:["vplib.entity"],UUID:[I; 67, 0, 0, 0],Marker:1b,Small:1b,Invisible:1b,NoGravity:1b}