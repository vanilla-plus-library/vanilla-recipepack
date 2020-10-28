#> vplib:core/v1/load/check

# Dependencies
scoreboard players set #load vplib.load 1

## 1.15
scoreboard players set #1.15 vplib.load 0
function vplib:core/v1/core/check_1.15
execute if score #1.15 vplib.load matches 0 run scoreboard players set #load vplib.load 0


# Success
execute if score #load vplib.load matches 1 run function vplib:math/v1/load/load

# Failed

## Messages
execute if score #load vplib.load matches 0 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Vanilla+ Library: Core failed to load. It requires Minecraft 1.15+."}]

## Reset loaded version
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.core.current vplib.load
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.core.breaking vplib.load
execute unless score #load vplib.load matches 1 run data remove storage vplib:data modules.core.version