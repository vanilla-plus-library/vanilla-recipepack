#> vplib:math/v1/load/load
# From: 'vplib:math/v1/load/resolve'
# Name: Vanilla+ Library: Math
# Description: Useful math functions.
# Version: 1

# VERSION Set storage

## Current
data modify storage vplib:data modules.math.version.current set value 1

## Breaking
data modify storage vplib:data modules.math.version.breaking set value 1

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Loaded Vanilla+ Library: Math v1","color":"white","bold":false}]

# Load constants
function vplib:math/v1/core/constants

# Load LCG seed
execute unless score #lcg vplib.math matches 0.. run function vplib:math/v1/lcg/reset_seed