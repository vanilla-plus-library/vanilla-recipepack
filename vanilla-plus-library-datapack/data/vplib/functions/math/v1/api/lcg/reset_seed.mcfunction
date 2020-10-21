#> vplib:math/v1/api/lcg/reset_seed
# Description: Reset LCG seed.
# From: #vplib:math/api/lcg/ranged

# Run function if lib version matches
execute if data storage vplib:data modules.math.version{current: 1} run function vplib:math/v1/lcg/reset_seed