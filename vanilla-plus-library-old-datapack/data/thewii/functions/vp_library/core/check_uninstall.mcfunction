#> thewii:vp_library/core/check_uninstall

# Check if 'modules' is empty
data modify storage thewii:vp_library/temp compound set from storage thewii:vp_library/data modules

scoreboard players set #boolean twvp.temp 0
execute store success score #boolean twvp.temp run data modify storage thewii:vp_library/temp compound set value {}
data remove storage thewii:vp_library/temp compound

# Uninstall if 'modules' is empty
execute if score #boolean twvp.temp matches 0 run function thewii:vp_library/core/uninstall