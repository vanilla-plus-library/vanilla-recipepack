#> vplib:math/v1/api/sqrt/solve
# From: #vplib:math/api/quadratic/solve

# Run function if lib version matches
execute if score #vplib.math.current vplib.load matches 1 run function vplib:math/v1/sqrt/solve

function vplib:math/api/sqrt/solve