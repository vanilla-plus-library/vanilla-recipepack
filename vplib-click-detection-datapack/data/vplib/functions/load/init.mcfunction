#> vplib:load/init
# Description: Initialize versioning objective and load core module.
# From: '#vplib:click_detection/load/init(#minecraft:load)'

# Add Objective
scoreboard objectives add vplib.load dummy

# Reset objective
scoreboard players reset * vplib.load

# Enumerate core
function #vplib:click_detection/api/load/enumerate

# Resolve core
function #vplib:click_detection/api/load/resolve