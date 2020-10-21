#> vplib:core/v1/load/load
# From: 'vplib:core/v1/load/resolve'
# Name: Vanilla+ Library: Core
# Description: Core module for the library.
# Version: 1

# Setup
scoreboard objectives add vpcr.data dummy
scoreboard objectives add vpcr.temp dummy
scoreboard objectives add vpcr.math dummy

# VERSION Set storage

## Current
data modify storage vplib:data modules.core.version.current set value 1

## Breaking
data modify storage vplib:data modules.core.version.breaking set value 1

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Core v1","color":"white","bold":false}]