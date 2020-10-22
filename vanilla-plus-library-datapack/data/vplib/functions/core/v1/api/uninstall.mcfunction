#> vplib:core/v1/api/uninstall
# Description: Uninstall module.
# From: #thewii:vp_library/core/api/uninstall

# Run function if lib version matches
execute if data storage vplib:data modules.core.version{current: 1} run function vplib:core/v1/core/uninstall