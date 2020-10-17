#> vplib:custom_crafting/v1/api/load
# Name: Load
# Description: Run module load
# From: #thewii:vp_library/custom_crafting/api/load

# Run 'load' if lib version matches
execute if data storage thewii:vp_library/data modules.crafting.version{current: 1} run function vplib:custom_crafting/v1/load