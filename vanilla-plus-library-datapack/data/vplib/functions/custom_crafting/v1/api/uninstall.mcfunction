#> vplib:custom_crafting/v1/api/uninstall
# Description: Uninstall module.
# From: #vplib:custom_crafting/api/uninstall

# Run function if lib version matches
execute if data storage vplib:data modules."custom_crafting".version{current: 1} run function vplib:custom_crafting/v1/core/uninstall