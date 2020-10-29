#> vplib:core/v1/load/resolve
# DEBUG
execute unless score #vplib.core.current vplib.load matches 1 run tellraw @a[tag=vplib.debug+] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Failed to resolve Vanilla+ Library: Core v1","color":"white","bold":false}]

# Load if lib version matches
execute if score #vplib.core.current vplib.load matches 1 run function vplib:core/v1/load/load