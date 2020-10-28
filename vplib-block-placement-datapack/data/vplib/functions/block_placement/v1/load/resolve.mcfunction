#> vplib:block_placement/v1/load/resolve

# Load if lib version matches
execute if score #vplib.block_placement.current vplib.load matches 1 run function vplib:block_placement/v1/load/check