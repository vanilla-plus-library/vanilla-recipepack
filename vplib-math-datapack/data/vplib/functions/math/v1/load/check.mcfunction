#> vplib:math/v1/load/check

# Dependencies
scoreboard players set #load vplib.load 1

## Missing core
scoreboard players set #expected.vplib.core vplib.load 1

execute unless score #vplib.core.current vplib.load >= #expected.vplib.core vplib.load run scoreboard players set #load vplib.load -1
execute if score #vplib.core.breaking vplib.load > #expected.vplib.core vplib.load run scoreboard players set #load vplib.load -2


# Success
execute if score #load vplib.load matches 1 run function vplib:math/v1/load/load

# Failed

## Messages
execute if score #load vplib.load matches -1 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Vanilla+ Library: Math failed to load. Vanilla+ Library: Core is either missing or doesn't match the minimum version(Expected: ","color":"white","bold":false},{"score":{"name":"#expected.vplib.core","objective": "vplib.load"},"color":"white","bold":false},{"text":", Got: ","color":"white","bold":false},{"score":{"name":"#vplib.core.breaking","objective": "vplib.load"},"color":"white","bold":false},{"text":").","color":"white","bold":false}]
execute if score #load vplib.load matches -2 run tellraw @a [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Vanilla+ Library: Math failed to load. Vanilla+ Library: Core version is too high and is not supported(Expected: ","color":"white","bold":false},{"score":{"name":"#expected.vplib.core","objective": "vplib.load"},"color":"white","bold":false},{"text":", Got: ","color":"white","bold":false},{"score":{"name":"#vplib.core.breaking","objective": "vplib.load"},"color":"white","bold":false},{"text":").","color":"white","bold":false}]

## Reset loaded version
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.math.current vplib.load
execute unless score #load vplib.load matches 1 run scoreboard players reset #vplib.math.breaking vplib.load
execute unless score #load vplib.load matches 1 run data remove storage vplib:data modules.math.version