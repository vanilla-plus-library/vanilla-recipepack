#> vplib:core/v1/core/uninstall

# Objectives
scoreboard objectives remove vplib.data
scoreboard objectives remove vplib.temp
scoreboard objectives remove vplib.math

# Clear chunk
setblock -30000000 0 4320 minecraft:bedrock
setblock -30000000 0 4321 minecraft:bedrock
setblock -30000000 0 4322 minecraft:bedrock
setblock -30000000 0 4323 minecraft:bedrock

kill 43-0-0-0-0

# Clear metadata
data remove storage vplib:data modules.core

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Uninstalled Vanilla+ Library: Core v1","color":"white","bold":false}]