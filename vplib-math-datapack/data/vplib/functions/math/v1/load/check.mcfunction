#> vplib:math/v1/load/check

# Dependencies
scoreboard players set #load vplib.load 1

## Missing core
execute unless score #vplib.core.current vplib.load matches 1.. run scoreboard players set #load vplib.load 0


# Success
execute if score #load vplib.load matches 1 run function vplib:math/v1/load/load

# Failed

## Messages
execute if score #load vplib.load matches 0 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Failed to load Vanilla+ Library: Math v","color":"white","bold":false},{"score":{"name": "#vplib.math.current","objective": "vplib.load"},"color":"white","bold":false},{"text":" due to missing core module.","color":"white","bold":false}]

## Reset loaded version
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.math.current vplib.load
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.math.breaking vplib.load
execute unless score #load vplib.load matches 1 run data remove storage vplib:data modules.math.version