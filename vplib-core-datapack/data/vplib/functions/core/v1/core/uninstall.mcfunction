#> vplib:core/v1/core/uninstall

# Objectives
scoreboard objectives remove vplib.data
scoreboard objectives remove vplib.temp
scoreboard objectives remove vplib.math

# Clear metadata
data remove storage vplib:data modules.core

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Uninstalled Vanilla+ Library: Core v1","color":"white","bold":false}]