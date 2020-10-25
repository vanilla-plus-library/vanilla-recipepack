#> vplib:math/v1/load/load
# From: 'vplib:math/v1/load/resolve'
# Name: Vanilla+ Library: Math
# Description: Useful math functions.
# Version: 1

# VERSION Set storage

## Current
execute store result storage vplib:data modules.math.version.current int 1 run scoreboard players get #vplib.math.current vplib.load

## Breaking
execute store result storage vplib:data modules.math.version.breaking int 1 run scoreboard players get #vplib.math.breaking vplib.load

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Math v1","color":"white","bold":false}]


# Load constants
function vplib:math/v1/core/constants

# Load LCG seed
execute unless score #lcg vplib.math matches 0.. run function vplib:math/v1/lcg/reset_seed