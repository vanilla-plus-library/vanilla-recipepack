#> vplib:core/v1/api/uninstall
# Description: Uninstall module.
# From: #vplib:core/api/uninstall

# Run function if lib version matches
execute if score #vplib.core.current vplib.load matches 1 run function vplib:core/v1/core/uninstall