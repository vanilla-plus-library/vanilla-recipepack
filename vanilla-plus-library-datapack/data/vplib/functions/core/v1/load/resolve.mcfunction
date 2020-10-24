#> vplib:core/v1/load/resolve

# Load if lib version matches
execute if score #vplib.core.current vplib.load matches 1 run function vplib:core/v1/load/load