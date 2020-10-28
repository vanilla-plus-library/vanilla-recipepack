#> vplib:block_placement/v1/api/uninstall
# From: #vplib:block_placement/api/uninstall

# Run function if lib version matches
execute if score #vplib.block_placement.current vplib.load matches 1 run function vplib:block_placement/v1/core/uninstall