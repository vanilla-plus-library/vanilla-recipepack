#> vplib:core/api/load/init
# From: '#vplib:core/load/init(#minecraft:load)'
# Description: Initialize versioning objective and load core module.

# Add Objective
scoreboard objectives add vplib.load dummy

# Reset objective
scoreboard players reset * vplib.load

# Enumerate core
function #vplib:core/api/load/enumerate

# Resolve core
function #vplib:core/api/load/resolve