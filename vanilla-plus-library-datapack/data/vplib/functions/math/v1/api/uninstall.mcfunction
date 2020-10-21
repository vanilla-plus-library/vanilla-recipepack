#> vplib:math/v1/api/uninstall
# Description: Uninstall module.
# From: #thewii:vp_library/math/api/uninstall

# Run function if lib version matches
execute if data storage vplib:data modules.math.version{current: 1} run function vplib:math/v1/core/uninstall