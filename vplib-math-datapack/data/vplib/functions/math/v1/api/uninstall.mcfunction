#> vplib:math/v1/api/uninstall
# From: #vplib:math/api/uninstall

# Run function if lib version matches
execute if score #vplib.math.current vplib.load matches 1 run function vplib:math/v1/core/uninstall